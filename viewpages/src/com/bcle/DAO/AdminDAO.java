package com.bcle.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

public class AdminDAO implements IAdminDAO
{

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}
	
	// 관리자 로그인
	@Override
	public String logAdmin(String name, String pwd) throws SQLException
	{
		String result = null;
		
		Connection conn = dataSource.getConnection();
		
		String sql = "SELECT ADMIN_ID FROM ADMIN WHERE NAME=? AND PWD=?";		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, pwd);
		
		ResultSet rs = pstmt.executeQuery();
		while (rs.next())
			result = rs.getString("ADMIN_ID");
		rs.close();
		pstmt.close();
		conn.close();
		
		return result;
	}
	
}
