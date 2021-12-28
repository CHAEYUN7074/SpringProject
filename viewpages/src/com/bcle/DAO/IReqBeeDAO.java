/*================================
 * IReqBeeDAO.java
 * - 인터페이스
================================*/


package com.bcle.DAO;

import java.sql.SQLException;
import java.util.ArrayList;

import com.bcle.DTO.ReqBee;

public interface IReqBeeDAO
{
	public ArrayList<ReqBee> reqList(String beeId) throws SQLException;
	
	public int add(ReqBee dto) throws SQLException;
	public int count(String beeId) throws SQLException;
	
}
