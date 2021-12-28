package com.bcle.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.bcle.DTO.Summary;

public class SummaryDAO implements ISummaryDAO
{

	private DataSource dataSource;

	

	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}

	// 총 동아리 수
	@Override
	public int calcTotClub() throws SQLException
	{
		int result = 0;
		Connection conn = dataSource.getConnection();
		String sql = "SELECT COUNT(*) AS COUNT FROM CLUB";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next())
		{
			result = rs.getInt("COUNT");
		}

		rs.close();
		pstmt.close();
		conn.close();
		return result;
	}

	// 당일 정모 수
	@Override
	public int calcBee() throws SQLException
	{
		int result = 0;
		Connection conn = dataSource.getConnection();
		String sql = "SELECT COUNT(*) AS COUNT " + "FROM CLUBBEEVIEW "
				+ "WHERE MIN <= REQCNT AND TO_CHAR(BEETIME) = TO_CHAR(SYSDATE,'YYYY-MM-DD')";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next())
		{
			result = rs.getInt("COUNT");
		}

		rs.close();
		pstmt.close();
		conn.close();
		return result;
	}

	// 신규 가입자 수 (당일 기준)
	@Override
	public int calcNewbie() throws SQLException
	{
		int result = 0;
		Connection conn = dataSource.getConnection();
		String sql = "SELECT COUNT(*) AS COUNT FROM MEMBER WHERE TO_DATE(BDATE,'YYYY-MM-DD') = TO_DATE(SYSDATE,'YYYY-MM-DD')";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next())
		{
			result = rs.getInt("COUNT");
		}

		rs.close();
		pstmt.close();
		conn.close();
		
		return result;
		
	}

	// 신규 동아리 수
	@Override
	public int calcNewClub() throws SQLException
	{

		int result = 0;
		Connection conn = dataSource.getConnection();
		String sql = "SELECT COUNT(*) FROM CLUB WHERE TO_CHAR(BDATE) = TO_CHAR(SYSDATE, 'YYYY-MM-DD')";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next())
		{
			result = rs.getInt(1);
		}

		rs.close();
		pstmt.close();
		conn.close();
		return result;
	}

	@Override
	public ArrayList<Summary> list() throws SQLException
	{
		ArrayList<Summary> result = new ArrayList<Summary>();
		Connection conn = dataSource.getConnection();
		String sql = "SELECT MONTH1, MONTH2, MONTH3, MONTH4, MONTH5, MONTH6 FROM MEM_TOT_CNT_VIEW";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next())
		{
			Summary dto = new Summary();

			dto.setPerTimeMemCnt1(rs.getInt("MONTH1"));
			dto.setPerTimeMemCnt2(rs.getInt("MONTH2"));
			dto.setPerTimeMemCnt3(rs.getInt("MONTH3"));
			dto.setPerTimeMemCnt4(rs.getInt("MONTH4"));
			dto.setPerTimeMemCnt5(rs.getInt("MONTH5"));
			dto.setPerTimeMemCnt6(rs.getInt("MONTH6"));

			result.add(dto);

		}

		rs.close();
		pstmt.close();
		conn.close();

		return result;

	}

	public ArrayList<Summary> p_list() throws SQLException
	{
		ArrayList<Summary> result = new ArrayList<Summary>();
		Connection conn = dataSource.getConnection();
		String sql = "SELECT MONTH1,MONTH2,MONTH3,MONTH4,MONTH5,MONTH6 FROM P_M_VIEW";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next())
		{
			Summary dto = new Summary();

			dto.setP_TimerMemCnt1(rs.getInt("MONTH1"));
			dto.setP_TimerMemCnt2(rs.getInt("MONTH2"));
			dto.setP_TimerMemCnt3(rs.getInt("MONTH3"));
			dto.setP_TimerMemCnt4(rs.getInt("MONTH4"));
			dto.setP_TimerMemCnt5(rs.getInt("MONTH5"));
			dto.setP_TimerMemCnt6(rs.getInt("MONTH6"));

			result.add(dto);

		}

		rs.close();
		pstmt.close();
		conn.close();

		return result;

	}

}
