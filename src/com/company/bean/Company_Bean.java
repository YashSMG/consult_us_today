package com.company.bean;

import java.sql.Blob;

public class Company_Bean {
	
	private int comp_id;
	private String name;
	private String email;
	private long contact_no;
	private String password;
	private String address;
	private String website;
	private String city;
	private String cmpy_image;
	private String usertype;
	private String login_status;
	private String comp_priority;
	private int category;
	
	
	
	public Company_Bean() {
		super();
	}
	
	
	
	
	
	
	



	public Company_Bean(String name, String email, long contact_no, String password, String address, String website,
			String city, String cmpy_image ) {
		super();
		this.name = name;
		this.email = email;
		this.contact_no = contact_no;
		this.password = password;
		this.address = address;
		this.website = website;
		this.city = city;
		this.cmpy_image = cmpy_image;
		
	}
	public Company_Bean(int comp_id, String name, String email, long contact_no, String password, String address,
			String website, String city, String cmpy_image) {
		super();
		this.comp_id = comp_id;
		this.name = name;
		this.email = email;
		this.contact_no = contact_no;
		this.password = password;
		this.address = address;
		this.website = website;
		this.city = city;
		this.cmpy_image = cmpy_image;
		
	}
	public int getComp_id() {
		return comp_id;
	}
	public void setComp_id(int comp_id) {
		this.comp_id = comp_id;
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
	public long getContact_no() {
		return contact_no;
	}
	public void setContact_no(long contact_no) {
		this.contact_no = contact_no;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCmpy_image() {
		return cmpy_image;
	}
	public void setCmpy_image(String cmpy_image) {
		this.cmpy_image = cmpy_image;
	}
	

   public String getUsertype() {
		return usertype;
	}






	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}










	public String getLogin_status() {
		return login_status;
	}










	public void setLogin_status(String login_status) {
		this.login_status = login_status;
	}










	public String getComp_priority() {
		return comp_priority;
	}










	public void setComp_priority(String comp_priority) {
		this.comp_priority = comp_priority;
	}










	public int getCategory() {
		return category;
	}










	public void setCategory(int category) {
		this.category = category;
	}

	
	
	
	

}
