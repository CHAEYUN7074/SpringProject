package com.bcle.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

public class AbsentDAO implements IAbsentDAO
{
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}
	
	@Override
	public int add(String reqId) throws SQLException
	{
		int result = 0;

		Connection conn = dataSource.getConnection();

		String sql = "INSERT INTO ABSENT(ABSENT_ID, REQ_ID, BDATE)"
				+ " VALUES(ABSENTSEQ.NEXTVAL, ?, SYSDATE)";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, reqId);

		result = pstmt.executeUpdate();

		pstmt.close();
		conn.close();

		return result;
	}

}
