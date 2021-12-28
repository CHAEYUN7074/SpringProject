/*================================
 * IBeeDAO.java
 * - 인터페이스
================================*/


package com.bcle.DAO;

import java.sql.SQLException;
import java.util.ArrayList;

import com.bcle.DTO.BeeEval;

public interface IBeeEvalDAO
{
	public ArrayList<BeeEval> list(String beeId) throws SQLException;
	
	public int add(BeeEval dto) throws SQLException;
}
