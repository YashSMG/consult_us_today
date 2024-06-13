package com.company.bean;

public class Login_Bean 
{
   private String username;
   private String password;
   
public Login_Bean(String username, String password) {
	super();
	this.username = username;
	this.password = password;
}

public String getUname() {
	return username;
}

public void setUname(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}
   
}
