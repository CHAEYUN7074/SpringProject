/* 동아리 - 게시판 - 공지사항
 * 
 * 
 */

package com.bcle.DTO;

public class BeeNotice
{
	// 주요 속성 구성
	private String beeId, clubmemId, title, content, beeDate, nickName;
	private int cnt;
	
	// getter / setter 구성
	public String getBeeId()
	{
		return beeId;
	}
	public void setBeeId(String beeId)
	{
		this.beeId = beeId;
	}
	public String getClubmemId()
	{
		return clubmemId;
	}
	public void setClubmemId(String clubmemId)
	{
		this.clubmemId = clubmemId;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
	}
	public String getBeeDate()
	{
		return beeDate;
	}
	public void setBeeDate(String beeDate)
	{
		this.beeDate = beeDate;
	}
	public int getCnt()
	{
		return cnt;
	}
	public void setCnt(int cnt)
	{
		this.cnt = cnt;
	}
	public String getNickName()
	{
		return nickName;
	}
	public void setNickName(String nickName)
	{
		this.nickName = nickName;
	}	
	
	
	
	/*
	 * B_ID       NOT NULL VARCHAR2(20)   
		CLUBMEM_ID NOT NULL VARCHAR2(20)   
		TITLE      NOT NULL VARCHAR2(100)  
		CONTENT    NOT NULL VARCHAR2(4000) 
		BDATE               DATE           
		CNT                 NUMBER   
	 */
	
	
	
	

}
