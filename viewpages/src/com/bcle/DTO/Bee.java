/*================================
 * Bee.java
 * - 모임 데이터 자료형 클래스
================================*/

package com.bcle.DTO;

public class Bee
{
	// 주요 속성 구성
	private String beeId, typeId, typeName, title, content, beeTime
					, weather, location, beeDate, clubmemId, writer, nickName;
	private int min, max, fee, reqCnt;
	
	// getter/setter 구성
	public String getBeeId()
	{
		return beeId;
	}
	public void setBeeId(String beeId)
	{
		this.beeId = beeId;
	}
	public String getTypeId()
	{
		return typeId;
	}
	public void setTypeId(String typeId)
	{
		this.typeId = typeId;
	}
	public String getTypeName()
	{
		return typeName;
	}
	public void setTypeName(String typeName)
	{
		this.typeName = typeName;
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
	public String getBeeTime()
	{
		return beeTime;
	}
	public void setBeeTime(String beeTime)
	{
		this.beeTime = beeTime;
	}
	public String getWeather()
	{
		return weather;
	}
	public void setWeather(String weather)
	{
		this.weather = weather;
	}
	public String getLocation()
	{
		return location;
	}
	public void setLocation(String location)
	{
		this.location = location;
	}
	
	public String getClubmemId()
	{
		return clubmemId;
	}
	public void setClubmemId(String clubmemId)
	{
		this.clubmemId = clubmemId;
	}
	public String getWriter()
	{
		return writer;
	}
	public void setWriter(String writer)
	{
		this.writer = writer;
	}
	public int getMin()
	{
		return min;
	}
	public void setMin(int min)
	{
		this.min = min;
	}
	public int getMax()
	{
		return max;
	}
	public void setMax(int max)
	{
		this.max = max;
	}
	public int getFee()
	{
		return fee;
	}
	public void setFee(int fee)
	{
		this.fee = fee;
	}
	public String getBeeDate()
	{
		return beeDate;
	}
	public void setBeeDate(String beeDate)
	{
		this.beeDate = beeDate;
	}
	public String getNickName()
	{
		return nickName;
	}
	public void setNickName(String nickName)
	{
		this.nickName = nickName;
	}
	public int getReqCnt()
	{
		return reqCnt;
	}
	public void setReqCnt(int reqCnt)
	{
		this.reqCnt = reqCnt;
	}
	
	
}
