/*================================
 * ISummaryDAO.java
 * - 메인 결산 인터페이스
================================*/

package com.bcle.DAO;

import java.sql.SQLException;
import java.util.ArrayList;

import com.bcle.DTO.Summary;

public interface ISummaryDAO
{
	// 총 동아리 수
	public int calcTotClub() throws SQLException;
	
	// 정모 수(당일)
	public int calcBee() throws SQLException;
	
	// 신규 가입자 수(당일)
	public int calcNewbie() throws SQLException;
	
	// 신규 동아리 수(당일)
	public int calcNewClub() throws SQLException;
	
	public ArrayList<Summary> list() throws SQLException;

	public ArrayList<Summary> p_list() throws SQLException;

}
