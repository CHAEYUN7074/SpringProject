/*
 * BeeNoticeDAO.java
 * 
 */

package com.bcle.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.bcle.DTO.BeeNotice;
import com.webjjang.util.PageObject;

public class BeeNoticeDAO implements IBeeNoticeDAO
{
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}

	// 동아리 공지사항 리스트
	// ※ 페이징 처리할때 수정필요~~!
	@Override
	public ArrayList<BeeNotice> list(PageObject pageObject) throws SQLException
	{
		ArrayList<BeeNotice> result = new ArrayList<BeeNotice>();
		
		Connection conn = dataSource.getConnection();
		
		String sql = "SELECT B_ID, NICKNAME, TITLE, BDATE, CNT"
				+ " FROM (SELECT ROWNUM RNUM, NOTICE.*"
				+ " FROM (SELECT * FROM CLUB_NOTICE_VIEW ORDER BY BDATE DESC) NOTICE)"
				+ " WHERE RNUM >=? AND RNUM <=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setLong(1, pageObject.getStartRow());
		pstmt.setLong(2, pageObject.getEndRow());
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next())
		{
			BeeNotice beenotice = new BeeNotice();
			
			beenotice.setBeeId(rs.getString("B_ID"));
			beenotice.setNickName(rs.getString("NICKNAME"));
			beenotice.setTitle(rs.getString("TITLE"));
			beenotice.setBeeDate(rs.getString("BDATE"));
			beenotice.setCnt(rs.getInt("CNT"));
			
			result.add(beenotice);
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return result;
	}
	/*@Override									//-- 페이징 추가 안한버전
	public ArrayList<BeeNotice> list() throws SQLException
	{
		ArrayList<BeeNotice> result = new ArrayList<BeeNotice>();
		
		Connection conn = dataSource.getConnection();
		
		String sql = "SELECT B_ID, NICKNAME, TITLE, BDATE, CNT"
				+ " FROM CLUB_NOTICE_VIEW"
				+ " ORDER BY BDATE DESC";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next())
		{
			BeeNotice beenotice = new BeeNotice();
			
			beenotice.setBeeId(rs.getString("B_ID"));
			beenotice.setNickName(rs.getString("NICKNAME"));
			beenotice.setTitle(rs.getString("TITLE"));
			beenotice.setBeeDate(rs.getString("BDATE"));
			beenotice.setCnt(rs.getInt("CNT"));
			
			result.add(beenotice);
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return result;
	}*/
	
	

	// 글쓰기
	@Override
	public int add(BeeNotice beeNotion) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
	      
	    String sql = "INSERT INTO ClUB_NOTICE(B_ID, CLUBMEM_ID, TITLE, CONTENT, BDATE, CNT)"
	    		+ " VALUES(CLUB_NOTICESEQ.NEXTVAL, ?, ?, ?, SYSDATE, 0)";
		
	    // ID를 어떻게 저장할것인가?(->세션) 닉넴은 어케 가져올꺼?
	    // 글쓰기는 동아리장만 가능..
	    
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, beeNotion.getClubmemId());
	    pstmt.setString(2, beeNotion.getTitle());
	    pstmt.setString(3, beeNotion.getContent());
		
	    result = pstmt.executeUpdate();
	      
        pstmt.close();
        conn.close();
	    
		return result;
	}
	

	// 글삭제
	@Override
	public int remove(String beeId) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
		
		String sql = "DELETE FROM ClUB_NOTICE WHERE B_ID = ?";		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		//공지사항 삭제는 동아리장만.... 가능....
		pstmt.setString(1, beeId);
		
		result = pstmt.executeUpdate();
		
		pstmt.close();
	    conn.close();
		
		return result;
	}

	// 글수정
	@Override
	public int modify(BeeNotice beeNotice) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
		
		String sql ="UPDATE ClUB_NOTICE"
				+ " SET TITLE=?, CONTENT=?"
				+ " WHERE B_ID=?";
		
		// 수정할때 등록날짜는 바뀌지않는게 맞겟지?
		// 바뀐다면 정렬이 뒤바껴버림..... 리스트 정렬을 작성순으로 해놔서
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, beeNotice.getTitle());
		pstmt.setString(2, beeNotice.getContent());
		pstmt.setString(3, beeNotice.getBeeId());
		
		result = pstmt.executeUpdate();
	      
	    pstmt.close();
	    conn.close();
		
		return result;
	}

	// 글번호에따라 내용뽑아내기
	@Override
	public BeeNotice showBeenotion(String beeId) throws SQLException
	{
		BeeNotice result = new BeeNotice();
		
		Connection conn = dataSource.getConnection();
		String sql ="SELECT B_ID, NICKNAME, TITLE, CONTENT, BDATE, CNT"
				+ " FROM CLUB_NOTICE_VIEW"
				+ " WHERE B_ID = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, beeId);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next())
		{
			result.setBeeId(rs.getString("B_ID"));
			result.setNickName(rs.getString("NICKNAME"));
			result.setTitle(rs.getString("TITLE"));
			result.setContent(rs.getString("CONTENT"));
			result.setBeeDate(rs.getString("BDATE"));
			result.setCnt(rs.getInt("CNT"));
		}
		
		rs.close();
		pstmt.close();
		conn.close();		
		
		return result;
	}

	// 조회수 증가
	@Override
	public int updateCnt(String beeId) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
		String sql ="UPDATE ClUB_NOTICE"
				+ " SET CNT = CNT + 1"
				+ " WHERE B_ID = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, beeId);
		
		result = pstmt.executeUpdate();
		
		pstmt.close();
	    conn.close();
		
		return result;
	}

	// 이전글 번호 뽑기
	// 존재하지않다면 -1반환
	@Override
	public int getBeforeNum(String beeId) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
		String sql ="SELECT NVL(MAX(TO_NUMBER(B_ID)), -1) AS BEFORENUM"
				+ " FROM ClUB_NOTICE"
				+ " WHERE TO_NUMBER(B_ID)<TO_NUMBER(?)" ;
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, beeId);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next())
		{
			result = rs.getInt("BEFORENUM");
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		
		return result;
	}

	// 다음글 번호 뽑기
	// 존재하지않다면 -1반환
	@Override
	public int getNextNum(String beeId) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
		String sql ="SELECT NVL(MIN(TO_NUMBER(B_ID)), -1) AS NEXTNUM"
				+ " FROM ClUB_NOTICE"
				+ " WHERE TO_NUMBER(B_ID)> TO_NUMBER(?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, beeId );
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next())
		{
			result = rs.getInt("NEXTNUM");
		}
		rs.close();
		pstmt.close();
		conn.close();		
		
		return result;
	}

	// 페이징
	@Override
	public int pageCount() throws SQLException
	{
		 int result = 0;
	      Connection conn = dataSource.getConnection();
	      String sql = "SELECT COUNT(*) AS COUNT"
	            + " FROM CLUB_NOTICE_VIEW";
	      
	      PreparedStatement pstmt = conn.prepareStatement(sql);
	      ResultSet rs = pstmt.executeQuery();
	      
	      while(rs.next())
	         result = rs.getInt("COUNT");
	         rs.close();
	         pstmt.close();
	         conn.close();
	         
	         return result;

	}
	
	
	
	/* 닉네임 가져오는거 예시(현정님꺼~~~)
	 * @Override 
	 * public String searchClubmemId(String id, String cid) throws
	 * SQLException { String result = null;
	 * 
	 * Connection conn = dataSource.getConnection(); String sql =
	 * "SELECT CLUBMEM_ID" + " FROM SEARCH_CLUBMEM_ID_VIEW" +
	 * " WHERE ID =? AND CID=?" +
	 * " AND CLUBMEM_ID NOT IN (SELECT CLUBMEM_ID FROM DROP_CLUB)";
	 * 
	 * PreparedStatement pstmt = conn.prepareStatement(sql); pstmt.setString(1, id);
	 * pstmt.setString(2, cid); ResultSet rs = pstmt.executeQuery(); while
	 * (rs.next()) result = rs.getString("CLUBMEM_ID"); rs.close(); pstmt.close();
	 * conn.close();
	 * 
	 * return result; }
	 * 
	 */
	
	
	

}
