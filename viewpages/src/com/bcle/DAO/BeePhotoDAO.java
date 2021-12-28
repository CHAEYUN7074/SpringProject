package com.bcle.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.bcle.DTO.BeePhoto;

public class BeePhotoDAO implements IBeePhotoDAO
{
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}

	@Override
	public int add(BeePhoto dto) throws SQLException
	{
		int result = 0;

		Connection conn = dataSource.getConnection();
		String sql = "INSERT INTO BEE_PHOTO(PHOTO_ID, BEE_ID, URL) VALUES(BEE_PHOTOSEQ.NEXTVAL, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getBeeId());
		pstmt.setString(2, dto.getUrl());

		result = pstmt.executeUpdate();

		pstmt.close();
		conn.close();

		return result;
	}

	@Override
	public ArrayList<String> beePic(String beeId) throws SQLException
	{
		ArrayList<String> result = new ArrayList<String>();

		Connection conn = dataSource.getConnection();
		String sql = "SELECT URL FROM BEE_PHOTO WHERE BEE_ID=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, beeId);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next())
			result.add(rs.getString("URL"));
		rs.close();
		pstmt.close();
		conn.close();
		
		return result;
	}

	@Override
	public int count(String beeId) throws SQLException
	{
		int result = 0;
		
		Connection conn = dataSource.getConnection();
		String sql = "SELECT COUNT(*) AS COUNT FROM BEE_PHOTO WHERE BEE_ID=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, beeId);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next())
			result = rs.getInt("COUNT");
		rs.close();
		pstmt.close();
		conn.close();
		return result;
	}

}
