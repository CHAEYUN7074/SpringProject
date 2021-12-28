/*===============================
	Admin.java
	- 관리자 DTO
================================*/


package com.bcle.DTO;

public class Admin
{
	// 주요 속성 구성
	private String adminId, pwd, name, eMail;


	// getter / setter 구성
	public String getAdminId()
	{
		return adminId;
	}

	public void setAdminId(String adminId)
	{
		this.adminId = adminId;
	}

	public String getPwd()
	{
		return pwd;
	}

	public void setPwd(String pwd)
	{
		this.pwd = pwd;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String geteMail()
	{
		return eMail;
	}

	public void seteMail(String eMail)
	{
		this.eMail = eMail;
	}
	
	
}
