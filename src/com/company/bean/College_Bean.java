package com.company.bean;

public class College_Bean {
	private int clg_id;
	private String name;
	private String mou_no;
	private long contact_no;
	private String email;
	private String address;
	private String password;
	private String city;
	private String usertype;
	private String image;
	private String login_sts;
	private String clg_priority;

	public College_Bean() {
		super();
	}

	public College_Bean(String name, String mou_no, long contact_no, String email, String address, String password,
			String city) {
		super();
		this.name = name;
		this.mou_no = mou_no;
		this.contact_no = contact_no;
		this.email = email;
		this.address = address;
		this.password = password;
		this.city = city;
	}
	public College_Bean(String email, String password)
	{
this.email = email;
this.password = password;
	}
	public College_Bean(int clg_id, String name, String mou_no, long contact_no, String email, String address,
			String password, String city) {
		super();
		this.clg_id = clg_id;
		this.name = name;
		this.mou_no = mou_no;
		this.contact_no = contact_no;
		this.email = email;
		this.address = address;
		this.password = password;
		this.city = city;
	}

	public int getClg_id() {
		return clg_id;
	}

	public void setClg_id(int clg_id) {
		this.clg_id = clg_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMou_no() {
		return mou_no;
	}

	public void setMou_no(String mou_no) {
		this.mou_no = mou_no;
	}

	public long getContact_no() {
		return contact_no;
	}

	public void setContact_no(long contact_no) {
		this.contact_no = contact_no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getLogin_sts() {
		return login_sts;
	}

	public void setLogin_sts(String login_sts) {
		this.login_sts = login_sts;
	}

	public String getClg_priority() {
		return clg_priority;
	}

	public void setClg_priority(String clg_priority) {
		this.clg_priority = clg_priority;
	}
	
	

}
