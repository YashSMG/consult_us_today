package com.company.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DB 
{
	public static Connection getcon() {
		Connection con=null;
	try
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/counsultustoday_db?useSSL=false&allowPublicKeyRetrieval=true",
			"root","root");
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	return con;
	}
}

