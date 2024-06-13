package com.company.bean;

import java.sql.Date;

public class Contact_Bean {
	private int  contact_id;
	private String name;
	private String email;
	private String message;
	private Date cDate;

	
	public Contact_Bean() {
		super();
	}
	public Contact_Bean(String name, String email, String message) {
		super();
		this.name = name;
		this.email = email;
		this.message = message;
	}
	public Contact_Bean(int contact_id, String name, String email, String message) {
		super();
		this.contact_id = contact_id;
		this.name = name;
		this.email = email;
		this.message = message;
	}
	public int getContact_id() {
		return contact_id;
	}
	public void setContact_id(int contact_id) {
		this.contact_id = contact_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getcDate() {
		return cDate;
	}
	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}
	
	
	

}
