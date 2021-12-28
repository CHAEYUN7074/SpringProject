package com.bcle.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.bcle.DTO.BeeEval;

public class BeeEvalDAO implements IBeeEvalDAO
{
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}

	@Override
	public ArrayList<BeeEval> list(String beeId) throws SQLException
	{
		ArrayList<BeeEval> result = new ArrayList<BeeEval>();
		
		Connection conn = dataSource.getConnection();
		String sql = "SELECT BEE_EVAL_ID, REQ_ID, SCORE, CONTENT, BDATE, NICKNAME, CLUBMEM_ID"
				+ " FROM BEE_EVAL_VIEW"
				+ " WHERE BEE_ID = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, beeId);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next())
		{
			BeeEval beeEval = new BeeEval();
			
			beeEval.setBeeEvalId(rs.getString("BEE_EVAL_ID"));
			beeEval.setReqId(rs.getString("REQ_ID"));
			beeEval.setScore(rs.getInt("SCORE"));
			beeEval.setContent(rs.getString("CONTENT"));
			beeEval.setBdate(rs.getString("BDATE"));
			beeEval.setNickname(rs.getString("NICKNAME"));
			beeEval.setClubmemId(rs.getString("CLUBMEM_ID"));
		
			result.add(beeEval);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return result;
	}

	@Override
	public int add(BeeEval dto) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
		String sql = "INSERT INTO BEE_EVAL(BEE_EVAL_ID, REQ_ID, SCORE, CONTENT, BDATE)"
				+ " VALUES (BEE_EBALSEQ.NEXTVAL, ?, ?, ?, SYSDATE)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getReqId());
		pstmt.setInt(2, dto.getScore());
		pstmt.setString(3, dto.getContent());
		
		result = pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		return result;
	}

}
