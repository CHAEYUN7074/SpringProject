package com.bcle.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.bcle.DTO.Category;
import com.bcle.DTO.Club;
import com.bcle.DTO.MemberInfo;
import com.bcle.DTO.Region;
import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;
import com.webjjang.util.PageObject;

public class ClubDAO implements IClubDAO
{
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}

	// 탈퇴랑 강퇴 생각해야 함...
	@Override
	public ArrayList<Club> myList(String id) throws SQLException
	{
		ArrayList<Club> result = new ArrayList<Club>();
		
		Connection conn = dataSource.getConnection();
		
		String sql = "SELECT CID, MAX, BDATE, CONTENT"
				+ ", CATEGORY_S_ID, S_CAT, REGION_S_ID, LOCAL"
				+ ", MID, URL, TITLE, PREOPENDATE"
				+ ", AGELIMIT_ID, LIMIT_ID"
				+ " FROM CLUBVIEW"
				+ " WHERE ID = ? AND BDATE IS NOT NULL";
		
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);		
		ResultSet rs = pstmt.executeQuery();
		while (rs.next())
		{
			Club club = new Club();
			
			club.setCid(rs.getString("CID"));
			club.setMax(rs.getInt("MAX"));
			club.setBdate(rs.getString("BDATE"));
			club.setContent(rs.getString("CONTENT"));
			club.setCategory_s_id(rs.getString("CATEGORY_S_ID"));
			club.setS_cat(rs.getString("S_CAT"));
			club.setRegion_s_id(rs.getString("REGION_S_ID"));
			club.setLocal(rs.getString("LOCAL"));
			club.setMid(rs.getString("MID"));
			club.setUrl(rs.getString("URL"));
			club.setTitle(rs.getString("TITLE"));
			club.setPreopendate(rs.getString("PREOPENDATE"));
			club.setAgelimit_id(rs.getString("AGELIMIT_ID"));
			club.setLimit_id(rs.getString("LIMIT_ID"));
			
			result.add(club);
		}
		rs.close();
		pstmt.close();
		conn.close();

		return result;
	}
	
	// 동아리코드 받아서 동아리 정보 출력
	@Override
	public Club showClub(String cid) throws SQLException
	{
		
		Club result = new Club();
		
		Connection conn = dataSource.getConnection();
		
		String sql = "SELECT CID, MAX, BDATE, CONTENT"
				+ ", CATEGORY_L_ID, L_CAT, CATEGORY_S_ID, S_CAT"
				+ ", REGION_L_ID, CITY, REGION_S_ID, LOCAL"
				+ ", MID, URL, TITLE, PREOPENDATE, AGELIMIT_ID, LIMIT_ID"
				+ " FROM CLUBVIEW5"
				+ " WHERE CID = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, cid);		
		ResultSet rs = pstmt.executeQuery();
		while (rs.next())
		{
			result.setCid(rs.getString("CID"));
			result.setMax(rs.getInt("MAX"));
			result.setBdate(rs.getString("BDATE"));
			result.setContent(rs.getString("CONTENT"));
			result.setCategory_l_id(rs.getString("CATEGORY_L_ID"));
			result.setL_cat(rs.getString("L_CAT"));
			result.setCategory_s_id(rs.getString("CATEGORY_S_ID"));
			result.setS_cat(rs.getString("S_CAT"));
			result.setRegion_l_id(rs.getString("REGION_L_ID"));
			result.setCity(rs.getString("CITY"));
			result.setRegion_s_id(rs.getString("REGION_S_ID"));
			result.setLocal(rs.getString("LOCAL"));
			result.setMid(rs.getString("MID"));
			result.setUrl(rs.getString("URL"));
			result.setTitle(rs.getString("TITLE"));
			result.setPreopendate(rs.getString("PREOPENDATE"));
			result.setAgelimit_id(rs.getString("AGELIMIT_ID"));
			result.setLimit_id(rs.getString("LIMIT_ID"));

		}
		rs.close();
		pstmt.close();
		conn.close();

		return result;
	}

	
	
	
	@Override
	public int countMember(String cid) throws SQLException
	{
		int result = 0;
		Connection conn = dataSource.getConnection();
		
		String sql = "SELECT COUNT FROM CLUBMEM_COUNT_VIEW WHERE CID = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, cid);		
		ResultSet rs = pstmt.executeQuery();
		while(rs.next())
			result = rs.getInt("COUNT");
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return result;
	}
	

	@Override
	public ArrayList<MemberInfo> searchClubmem(String cid) throws SQLException
	{
		ArrayList<MemberInfo> result = new ArrayList<MemberInfo>();
		
		Connection conn = dataSource.getConnection();
		
		String sql = "SELECT CLUBMEM_ID, NICKNAME, URL FROM CLUBMEM_CID_VIEW WHERE CID=?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, cid);		
		ResultSet rs = pstmt.executeQuery();
		while(rs.next())
		{
			MemberInfo dto = new MemberInfo();
			
			dto.setClubmemId(rs.getString("CLUBMEM_ID"));
			dto.setNickname(rs.getString("NICKNAME"));
			dto.setUrl(rs.getString("URL"));
			
			result.add(dto);
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return result;
	}

	// 지역 리스트 출력(시) ---city
    @Override
    public ArrayList<Region> regionLList() throws SQLException
    {
       ArrayList<Region> result = new ArrayList<Region>();
       
       Connection conn = dataSource.getConnection();
       
       String sql = "SELECT REGION_L_ID, CITY FROM REGION_L";

       PreparedStatement pstmt =  conn.prepareStatement(sql);
       ResultSet rs = pstmt.executeQuery();
       
       while(rs.next())
       {
          Region dto = new Region();
          
          dto.setRegion_l_id(rs.getString("REGION_L_ID"));
          dto.setCity(rs.getString("CITY"));
          
          result.add(dto);
       }
       
       rs.close();
       pstmt.close();
       conn.close();
       
       return result;
    }
    
	  // 군/구 
	 @Override
	 public ArrayList<Region> regionSList(String region_l_id) throws SQLException
	 {
	     ArrayList<Region> result = new ArrayList<Region>();
	       
	       Connection conn = dataSource.getConnection();
	       
	       String sql = "SELECT REGION_S_ID,REGION_L_ID,LOCAL FROM REGION_S WHERE REGION_L_ID=?";
	
	       PreparedStatement pstmt =  conn.prepareStatement(sql);
	       pstmt.setString(1, region_l_id);
	       ResultSet rs = pstmt.executeQuery();
	
	       
	       while(rs.next())
	       {
	          Region dto = new Region();
	          
	          dto.setRegion_l_id(rs.getString("REGION_L_ID"));
	         dto.setRegion_s_id(rs.getString("REGION_S_ID"));
	         dto.setLocal(rs.getString("LOCAL")); 
	          
	          result.add(dto);
	       }
	       
	       rs.close();
	       pstmt.close();
	       conn.close();
	       
	       return result;
	
	 }
	
	 @Override
	 public ArrayList<Category> categoryLList() throws SQLException
	 {
	    ArrayList<Category> result = new ArrayList<Category>();
	       
	       Connection conn = dataSource.getConnection();
	       
	       String sql = "SELECT CATEGORY_L_ID,L_CAT FROM CATEGORY_L";
	
	       PreparedStatement pstmt =  conn.prepareStatement(sql);
	       ResultSet rs = pstmt.executeQuery();
	       
	       while(rs.next())
	       {
	          Category dto = new Category();
	          
	          dto.setCategory_l_id(rs.getString("CATEGORY_L_ID"));
	          dto.setL_cat(rs.getString("L_CAT"));
	        
	          
	          result.add(dto);
	       }
	       
	       rs.close();
	       pstmt.close();
	       conn.close();
	       
	       return result;
	
	 }
	
	 @Override
	 public ArrayList<Category> categorySList(String category_l_id) throws SQLException
	 {
	     ArrayList<Category> result = new ArrayList<Category>();
	       
	       Connection conn = dataSource.getConnection();
	       
	       String sql = "SELECT CATEGORY_L_ID, CATEGORY_S_ID, S_CAT"
	             + " FROM CATEGORY_S WHERE CATEGORY_L_ID = ?";
	
	       PreparedStatement pstmt =  conn.prepareStatement(sql);
	       pstmt.setString(1, category_l_id);
	       ResultSet rs = pstmt.executeQuery();
	       
	       while(rs.next())
	       {
	          Category dto = new Category();
	          
	          dto.setCategory_s_id(rs.getString("CATEGORY_S_ID"));
	          dto.setCategory_l_id(rs.getString("CATEGORY_L_ID"));
	          dto.setS_cat(rs.getString("S_CAT"));
	          
	          result.add(dto);
	       }
	       
	       rs.close();
	       pstmt.close();
	       conn.close();
	       
	       return result;
	
	 }
	 
		@Override
		// 개설 예정 동아리 클릭시(ClubBeforeOpenedContents.jsp)에 보여질 항목들
		// + 개설 예정 동아리 수정 폼에서 쓰여질 메소드 
		//cid 추가 
		public Club showPreOpenClub(String cid) throws SQLException 
		{
			Club result = new Club();
			Connection conn = dataSource.getConnection();
			String sql = "SELECT TITLE,CONTENT,NICKNAME,PREOPENDATE,MID,CID"
					+ ",CATEGORY_S_ID,CATEGORY_L_ID,REGION_S_ID,REGION_L_ID"
					+ ",L_CAT,S_CAT,CITY,LOCAL"
					+ ",MAX,LIMIT_ID,AGELIMIT_ID,MIN_AGE,MAX_AGE,DAY "
					+ "FROM CLUB_VIEW "
					+ "WHERE CID = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cid);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				result.setTitle(rs.getString("TITLE"));
				result.setContent(rs.getString("CONTENT"));
				result.setNickname(rs.getString("NICKNAME"));
				result.setPreopendate(rs.getString("PREOPENDATE"));
				result.setMid(rs.getString("MID"));
				result.setCid(rs.getString("CID"));
				result.setCategory_s_id(rs.getString("CATEGORY_S_ID"));
				result.setCategory_l_id(rs.getString("CATEGORY_L_ID"));
				result.setRegion_s_id(rs.getString("REGION_S_ID"));
				result.setRegion_l_id(rs.getString("REGION_L_ID"));
				result.setL_cat(rs.getString("L_CAT"));
				result.setS_cat(rs.getString("S_CAT"));
				result.setCity(rs.getString("CITY"));
				result.setLocal(rs.getString("LOCAL"));
				result.setMax(Integer.parseInt(rs.getString("MAX")));
				result.setLimit_id(rs.getString("LIMIT_ID"));
				result.setAgelimit_id(rs.getString("AGELIMIT_ID"));
				result.setMin_age(Integer.parseInt(rs.getString("MIN_AGE")));
				result.setMax_age(Integer.parseInt(rs.getString("MAX_AGE")));
				result.setDay(Integer.parseInt(rs.getString("DAY")));

			}
			
			rs.close();
			pstmt.close();
			conn.close();
			return result;
		
		}
		
	    // 개설 예정 동아리 리스트 (ClubBeforeOpenedList.jsp)   --추가
		//★ 페이징 처리를 위해 수정필요
		public ArrayList<Club> preopenList(PageObject pageObject,String searchKey
				,String searchValue,String orderKey) throws SQLException 
		{
			//1번 페이지 1~10
			//2번 페이지 11~20
			ArrayList<Club> result = new ArrayList<Club>();
			Connection conn = dataSource.getConnection();
			
			searchValue = "%" + searchValue + "%"; //추가
			
			String sql = "SELECT CID,TITLE,DAY,URL FROM "
					+ "(SELECT ROWNUM RNUM, CLUB.* FROM"
					+ "(SELECT * FROM CLUB_VIEW WHERE BDATE IS NULL " + searchKey
					+ " AND TITLE LIKE ? ORDER BY "+ orderKey + ") CLUB)"
					+ " WHERE RNUM >=?  AND RNUM <=?";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, searchValue);
			pstmt.setLong(2, pageObject.getStartRow());
			pstmt.setLong(3, pageObject.getEndRow());
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Club dto = new Club();
				      
			    dto.setTitle(rs.getString("TITLE"));
			    dto.setCid(rs.getString("CID"));
			    dto.setDay(Integer.parseInt(rs.getString("DAY")));
			    dto.setUrl(rs.getString("URL"));
			    

			    result.add(dto);
			}
		      rs.close();
		      pstmt.close();
		      conn.close();
		      
		      return result;
		   }
		
		   //★ 개설 예정 동아리 갯수( DB 레코드의 갯수를 가져오는 쿼리문 구성)
		   // 검색 기능 추가하면 수정하게 될 메소드 
		  public int preCount(String searchKey,String searchValue) throws SQLException 
		  {
			int result = 0;
			Connection conn = dataSource.getConnection();
			
			searchValue = "%" + searchValue + "%"; //추가
			
			String sql = "SELECT COUNT(*) AS COUNT"
					+ " FROM CLUB_VIEW"
					+ " WHERE BDATE IS NULL " + searchKey
					+ " AND TITLE LIKE ?";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, searchValue);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
				result = rs.getInt("COUNT");
		      rs.close();
		      pstmt.close();
		      conn.close();
		      
		      return result;
		   } 
		  
		 
		
		// 동아리 insert 메소드 
		@Override
		public int insert(Club club) throws SQLException
		{
			int result = 0;
			Connection conn = dataSource.getConnection();
			
			String sql = "{ call PRC_CLUB_INSERT(?,?,?,?,?,?,?,?,?)}";
			CallableStatement cstmt = conn.prepareCall(sql);
			cstmt.setString(1, club.getTitle());
			cstmt.setString(2, club.getId());
			cstmt.setInt(3, club.getMax());
			cstmt.setString(4, club.getContent());
			cstmt.setString(5, club.getCategory_s_id());
			cstmt.setString(6, club.getRegion_s_id());
			cstmt.setString(7, club.getUrl());
			cstmt.setString(8, club.getLimit_id());
			cstmt.setString(9, club.getAgelimit_id());
			
		
			result = cstmt.executeUpdate();
		      
		    cstmt.close();
		    conn.close();
		      
		    return result;
		}
		
		// 동아리 modify 메소드

		@Override
		public int modify(Club club) throws SQLException
		{
			int result = 0;

			Connection conn = dataSource.getConnection();

			String sql = "UPDATE CLUB SET TITLE=?" + ", MAX=?, CONTENT=?, CATEGORY_S_ID=?, REGION_S_ID=?, URL=?"
					+ ", LIMIT_ID=?, AGELIMIT_ID=?" + " WHERE CID=?";

			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, club.getTitle());
			pstmt.setInt(2, club.getMax());
			pstmt.setString(3, club.getContent());
			pstmt.setString(4, club.getCategory_s_id());
			pstmt.setString(5, club.getRegion_s_id());
			pstmt.setString(6, club.getUrl());
			pstmt.setString(7, club.getLimit_id());
			pstmt.setString(8, club.getAgelimit_id());
			pstmt.setString(9, club.getCid());

			result = pstmt.executeUpdate();

			pstmt.close();
			conn.close();

			return result;
		}
		

		//동아리 delete 메소드
				//개설예정동아리를 개설자가 삭제할 때 쓰는 메소드
				public int clubDelete(String cid) throws SQLException
				{
					int result = 0;
					Connection conn = dataSource.getConnection();
					String sql = "DELETE FROM CLUB WHERE CID = ?";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, cid);
					
					result = pstmt.executeUpdate();
					
					pstmt.close();
					conn.close();
					
					return result;
				}
	    
	    //동아리 이름 중복검사
		@Override
		public int checkTitle(String title) throws SQLException
		{
			int result = 0;

			Connection conn = dataSource.getConnection();

			String sql = "SELECT * FROM CLUB_VIEW WHERE TITLE = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);

			ResultSet rs = pstmt.executeQuery();

			if (rs.next() || title.equals(""))
				result = 0;
			else
				result = 1;

			rs.close();
			pstmt.close();
			conn.close();

			return result;
		}
		
		//세션(session)의 id를 통해 MID를 반환하는 메소드 
		// MEMBERINFO의 ID(session)로 MID 찾는 메소드 
		public String searchMid(String id) throws SQLException
		{
			String result="";
			Connection conn = dataSource.getConnection();

			String sql = "SELECT MID FROM MEMBERINFO WHERE ID=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
				result = rs.getString("MID");
			
			rs.close();
			pstmt.close();
			conn.close();
			
			return result;
		}
		
		//동아리 가입신청 이력확인 
		//어떤 포지션으로 가입신청했는가 조회
		//개설 예정 동아리 스태프,총무 지원에서 사용 
		public String searchJoin(String mid,String cid) throws SQLException
		{
			String result = "";
			Connection conn = dataSource.getConnection();
			
			String sql = "SELECT POSITION_ID FROM JOIN_CLUB WHERE CID = ? AND MID=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cid);
			pstmt.setString(2, mid);
		
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) //이력이 존재 하면
				result = rs.getString("POSITION_ID");
			else //이력 존재 하지 않으면
				result = "-1";
			
			rs.close();
			pstmt.close();
			conn.close();
			
			return result;
		}
		
		//동아리 가입신청 메소드 (insert)
		public int joinClub(String cid,String mid,String position_id) throws SQLException
		{
			int result = 0;
			Connection conn = dataSource.getConnection();
			String sql = "INSERT INTO JOIN_CLUB(JOIN_ID, CID, MID, BDATE,POSITION_ID) " + 
					"VALUES('JC'||JOIN_CLUBSEQ.NEXTVAL,?,?,SYSDATE,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cid);
			pstmt.setString(2, mid);
			pstmt.setString(3, position_id);
			
			result=pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
			return result;
		}
		
		//개설예정 동아리 스태프, 총무 가입신청 취소
		public int joinClubDelete(String cid, String mid) throws SQLException
		{
			int result = 0;
			Connection conn = dataSource.getConnection();
			String sql = "DELETE FROM JOIN_CLUB WHERE CID = ? AND MID = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cid);
			pstmt.setString(2, mid);
			
			result=pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
			return result;
		}
		
		//개설예정 동아리에 총무 지원자들 
		public ArrayList<MemberInfo> applyManagerList(String cid) throws SQLException
		{
			ArrayList<MemberInfo> result = new ArrayList<MemberInfo>();
			Connection conn = dataSource.getConnection();
			String sql = "SELECT NICKNAME, URL, M.MID AS MID "
					+ "FROM JOIN_CLUB J LEFT JOIN MEMBERINFO_VIEW2 M "
					+ "ON J.MID = M.MID WHERE POSITION_ID=2 "
					+ "AND CID=? ORDER BY BDATE";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cid);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				MemberInfo m = new MemberInfo();
				
				m.setNickname(rs.getString("NICKNAME"));
				m.setUrl(rs.getString("URL"));
				m.setMid(rs.getString("MID"));
				
				result.add(m);
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
			return result;
		}
		//개설예정 동아리에 스태프 지원자들 
		public ArrayList<MemberInfo> applyStaffList(String cid) throws SQLException
		{
			ArrayList<MemberInfo> result = new ArrayList<MemberInfo>();
			Connection conn = dataSource.getConnection();
			String sql = "SELECT NICKNAME, URL, M.MID AS MID "
					+ "FROM JOIN_CLUB J LEFT JOIN MEMBERINFO_VIEW2 M "
					+ "ON J.MID = M.MID WHERE POSITION_ID=3 "
					+ "AND CID=? ORDER BY BDATE";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cid);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				MemberInfo m = new MemberInfo();
				
				m.setNickname(rs.getString("NICKNAME"));
				m.setUrl(rs.getString("URL"));
				m.setMid(rs.getString("MID"));
				
				result.add(m);
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
			return result;
		}
		//회원 프로필 페이지에 사용될 메소드
		//회원의 기본 정보
		public MemberInfo memberProfile(String mid) throws SQLException 
		{
			MemberInfo result = new MemberInfo();
			Connection conn = dataSource.getConnection();
			String sql = "SELECT URL,NICKNAME, AGE,"
					+ " REGIONNAME, REGIONNAME2, REGIONNAME3 "
					+ "FROM MEMBERINFO_VIEW2 WHERE MID = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				result.setUrl(rs.getString("URL"));
				result.setNickname(rs.getString("NICKNAME"));
				result.setAge(rs.getInt("AGE"));
				result.setRegionName(rs.getString("REGIONNAME"));
				result.setRegionName2(rs.getString("REGIONNAME2"));
				result.setRegionName3(rs.getString("REGIONNAME3"));
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			return result;
		
		}
		//회원 프로필 페이지에 사용될 메소드2
		//회원이 개설한 동아리(정식 개설된 동아리만) 
		//++ 추후에 비활성화와 종료동아리는 제외하는걸로 변경해야할듯
		public ArrayList<Club> memberClubList(String mid) throws SQLException
		{
			ArrayList<Club> result = new ArrayList<Club>();
			Connection conn = dataSource.getConnection();
			String sql = "SELECT S_CAT,TITLE, CID "
					+ "FROM CLUB_VIEW WHERE BDATE IS NOT NULL AND MID = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Club dto = new Club();
				
				dto.setS_cat(rs.getString("S_CAT"));
				dto.setTitle(rs.getString("TITLE"));
				dto.setCid(rs.getString("CID"));
				
				result.add(dto);
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			return result;
		}
	
		
		//스태프, 총무 선정 insert 메소드
	      public int choiceMember(String cid,String mid) throws SQLException
	      {
	         int result = 0;
	         Connection conn = dataSource.getConnection();
	         
	         String sql = "{ call PRC_CLUBMEM_INSERT(?,?)}";
	         CallableStatement cstmt = conn.prepareCall(sql);
	         cstmt.setString(1, cid);
	         cstmt.setString(2, mid);
	         
	         result = cstmt.executeUpdate();
	            
	          cstmt.close();
	          conn.close();
	            
	         return result;
	      }
	      
	      //스태프와 수 확인 메소드
	      //개설예정 동아리- 스태프 선정하기하면 
	      //선정하기 버튼이 사라지게 하기 위해 
	      //스태프 수를 반환하는 메소드 
	      public int staffCnt(String cid) throws SQLException
	      {
	         int result = 0;
	         Connection conn = dataSource.getConnection();
	         
	         String sql = "SELECT COUNT(*) AS COUNT "
	               + "FROM CLUBMEMBERLIST C LEFT JOIN JOIN_CLUB J "
	               + "ON C.JOIN_ID = J.JOIN_ID "
	               + "WHERE CID=? AND C.POSITION_ID=3";
	         PreparedStatement pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, cid);
	      
	         ResultSet rs = pstmt.executeQuery();
	         
	         if(rs.next()) //이력이 존재 하면
	            result = rs.getInt("COUNT");
	         
	         rs.close();
	         pstmt.close();
	         conn.close();
	         
	         return result;
	      }
	      
	      //총무 수를 반환하는 메소드 
	      public int managerCnt(String cid) throws SQLException
	      {
	         int result = 0;
	         Connection conn = dataSource.getConnection();
	         
	         String sql = "SELECT COUNT(*) AS COUNT "
	               + "FROM CLUBMEMBERLIST C LEFT JOIN JOIN_CLUB J "
	               + "ON C.JOIN_ID = J.JOIN_ID "
	               + "WHERE CID=? AND C.POSITION_ID=2";
	         PreparedStatement pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, cid);
	      
	         ResultSet rs = pstmt.executeQuery();
	         
	         if(rs.next()) //이력이 존재 하면
	            result = rs.getInt("COUNT");
	         
	         rs.close();
	         pstmt.close();
	         conn.close();
	         
	         return result;
	      }
}




