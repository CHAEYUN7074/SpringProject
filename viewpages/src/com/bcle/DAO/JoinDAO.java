/* ===============================
	JoinDAO.java
	- 회원가입시 필요한 모든 DAO
=================================*/

package com.bcle.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.bcle.DTO.Category;
import com.bcle.DTO.Region;

public class JoinDAO implements IJoinDAO
{
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
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

}
