package com.bcle.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.bcle.DTO.ReqBee;

public class ReqBeeDAO implements IReqBeeDAO
{
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}

	// 해당 모임 참여자 리스트 출력
	@Override
	public ArrayList<ReqBee> reqList(String beeId) throws SQLException
	{
		ArrayList<ReqBee> result = new ArrayList<ReqBee>();

		Connection conn = dataSource.getConnection();
		String sql = "SELECT NICKNAME, REQ_ID, CLUBMEM_ID, BEE_ID, BDATE FROM REQBEEVIEW WHERE BEE_ID = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, beeId);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next())
		{
			ReqBee reqBee = new ReqBee();

			reqBee.setNickname(rs.getString("NICKNAME"));
			reqBee.setReqId(rs.getString("REQ_ID"));
			reqBee.setClubmemId(rs.getString("CLUBMEM_ID"));
			reqBee.setBeeId(rs.getString("BEE_ID"));
			reqBee.setBdate(rs.getString("BDATE"));

			result.add(reqBee);
		}
		rs.close();
		pstmt.close();
		conn.close();

		return result;
	}

	// 모임 참여 메소드
	@Override
	public int add(ReqBee dto) throws SQLException
	{
		int result = 0;

		Connection conn = dataSource.getConnection();

		String sql = "INSERT INTO BEE_REQ(REQ_ID, CLUBMEM_ID, BEE_ID, BDATE)"
				+ " VALUES(BEE_REQSEQ.NEXTVAL, ?, ?, SYSDATE)";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getClubmemId());
		pstmt.setString(2, dto.getBeeId());

		result = pstmt.executeUpdate();

		pstmt.close();
		conn.close();

		return result;
	}

	@Override
	public int count(String beeId) throws SQLException
	{
		int result = 0;

		Connection conn = dataSource.getConnection();

		String sql = "SELECT COUNT(*) AS COUNT FROM REQBEEVIEW WHERE BEE_ID = ?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, beeId);

		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next())
			result = rs.getInt("COUNT");

		rs.close();
		pstmt.close();
		conn.close();

		return result;
	}

	
}
