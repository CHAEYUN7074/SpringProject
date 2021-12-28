package com.bcle.DAO;

import java.sql.SQLException;

public interface IAdminDAO
{

	public String logAdmin(String name, String pwd) throws SQLException;
	
}
