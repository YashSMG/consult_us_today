package com.company.bean;

import java.sql.Date;

public class Student_Bean {
	
private int std_id;
private int passout_id;
private int passout_year;
private int passout_year_id;
private int clg_id;
private String name;
private String email;
private long contact_no;
private String Password;
private String address;
private String stream;
private String qualification;
private Date dob;
private String gender;
private String city;
private String usertype;
private String college;
private String passing_status;
private String image;
private Date reg_date;
private String login_status;
private String stud_priority;

public Student_Bean() {
	super();
}
public Student_Bean(int passout_id, int passout_year, int clg_id, String name, String email, long contact_no,
		String password, String address, String stream, String qualification, Date dob, String gender, String city) {
	super();
	this.passout_id = passout_id;
	this.passout_year = passout_year;
	this.clg_id = clg_id;
	this.name = name;
	this.email = email;
	this.contact_no = contact_no;
	Password = password;
	this.address = address;
	this.stream = stream;
	this.qualification = qualification;
	this.dob = dob;
	this.gender = gender;
	this.city = city;
}
public Student_Bean(int std_id, int passout_id, int passout_year, int clg_id, String name, String email,
		long contact_no, String password, String address, String stream, String qualification, Date dob, String gender,
		String city) {
	super();
	this.std_id = std_id;
	this.passout_id = passout_id;
	this.passout_year = passout_year;
	this.clg_id = clg_id;
	this.name = name;
	this.email = email;
	this.contact_no = contact_no;
	Password = password;
	this.address = address;
	this.stream = stream;
	this.qualification = qualification;
	this.dob = dob;
	this.gender = gender;
	this.city = city;
}

public Student_Bean(int std_id, String name, String email, long contact_no, String address, String stream
		, Date dob, String gender, String city) {
	super();
	this.std_id = std_id;
	this.name = name;
	this.email = email;
	this.contact_no = contact_no;
	this.address = address;
	this.stream = stream;
	
	this.dob = dob;
	this.gender = gender;
	this.city = city;
}



public int getStd_id() {
	return std_id;
}
public void setStd_id(int std_id) {
	this.std_id = std_id;
}
public int getPassout_id() {
	return passout_id;
}
public void setPassout_id(int passout_id) {
	this.passout_id = passout_id;
}
public int getPassout_year() {
	return passout_year;
}
public void setPassout_year(int passout_year) {
	this.passout_year = passout_year;
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
	return Password;
}
public void setPassword(String password) {
	Password = password;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getStream() {
	return stream;
}
public void setStream(String stream) {
	this.stream = stream;
}
public String getQualification() {
	return qualification;
}
public void setQualification(String qualification) {
	this.qualification = qualification;
}
public Date getDob() {
	return dob;
}
public void setDob(Date dob) {
	this.dob = dob;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
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
public String getCollege() {
	return college;
}
public void setCollege(String college) {
	this.college = college;
}
public String getPassing_status() {
	return passing_status;
}
public void setPassing_status(String passing_status) {
	this.passing_status = passing_status;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public Date getReg_date() {
	return reg_date;
}
public void setReg_date(Date reg_date) {
	this.reg_date = reg_date;
}
public int getPassout_year_id() {
	return passout_year_id;
}
public void setPassout_year_id(int passout_year_id) {
	this.passout_year_id = passout_year_id;
}
public String getLogin_status() {
	return login_status;
}
public void setLogin_status(String login_status) {
	this.login_status = login_status;
}
public String getStud_priority() {
	return stud_priority;
}
public void setStud_priority(String stud_priority) {
	this.stud_priority = stud_priority;
}



}

