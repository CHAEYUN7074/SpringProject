/*
 * IBeeNoticeDAO.java
 */

package com.bcle.DAO;

import java.sql.SQLException;
import java.util.ArrayList;

import com.bcle.DTO.BeeNotice;
import com.webjjang.util.PageObject;

public interface IBeeNoticeDAO
{
									// 페이징 해주려면 매개변수
	public ArrayList<BeeNotice> list(PageObject pageObject) throws SQLException;
	//public ArrayList<BeeNotice> list() throws SQLException;
	
	
	public BeeNotice showBeenotion(String beeId) throws SQLException;
	 
	public int add(BeeNotice beeNotion) throws SQLException;
	public int remove(String beeId) throws SQLException;
	public int modify(BeeNotice beeNotice) throws SQLException;
	
	public int updateCnt(String beeId) throws SQLException;
	
	// 이전글 다음글
	public int getBeforeNum(String beeId) throws SQLException;
	public int getNextNum(String beeId) throws SQLException;

	// 페이징 처리
	public int pageCount() throws SQLException;


}
