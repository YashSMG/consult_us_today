package com.company.bean;


import java.sql.Date;

public class Campus_Bean {
	
	private int campus_id;
	private int comp_id;
	private String name;
	private String Cmpy_image;
	private Date posted_date;
	private String registration_link;
	private String position;
	private String drive_info;
	private Date end_date;
	private String status;
    private int college_id;
    private int college_campus_id;
    private Date applied_Date;
    private String address;
    private String approval_status;
    private String compName;
    
	
	
	
	public Campus_Bean() {
		super();
	}
	
	
	
	
	
	
	

	public Campus_Bean(int comp_id,int campus_id ,int college_id, String position, String drive_info) {
		super();
		this.comp_id = comp_id;
		this.campus_id = campus_id;
		this.position = position;
		this.drive_info = drive_info;
		this.college_id = college_id;
	}

	
	//IndustrialApplication Start
	
	public Campus_Bean(int comp_id, Date posted_date, String registration_link, String position, String drive_info,
			Date end_date) {
		super();
		this.comp_id = comp_id;
		this.posted_date = posted_date;
		this.registration_link = registration_link;
		this.position = position;
		this.drive_info = drive_info;
		this.end_date = end_date;
	}
//IndustrualApplied end
	
	
	
	public Campus_Bean(int comp_id, String registration_link, String position, String drive_info) {
		super();
		this.comp_id = comp_id;
		this.registration_link = registration_link;
		this.position = position;
		this.drive_info = drive_info;
	
	}








	public Campus_Bean(int comp_id, String name, String cmpy_image, Date posted_date,
			String registration_link, String position, String drive_info, Date end_date, String status) {
		super();
		this.comp_id = comp_id;
		this.name = name;
		Cmpy_image = cmpy_image;
		this.posted_date = posted_date;
		this.registration_link = registration_link;
		this.position = position;
		this.drive_info = drive_info;
		this.end_date = end_date;
		this.status = status;
	}


	public Campus_Bean(int campus_id, int comp_id, String name, String cmpy_image, Date posted_date,
			String registration_link, String position, String drive_info, Date end_date, String status) {
		super();
		this.campus_id = campus_id;
		this.comp_id = comp_id;
		this.name = name;
		Cmpy_image = cmpy_image;
		this.posted_date = posted_date;
		this.registration_link = registration_link;
		this.position = position;
		this.drive_info = drive_info;
		this.end_date = end_date;
		this.status = status;
	}


	public int getCampus_id() {
		return campus_id;
	}


	public void setCampus_id(int campus_id) {
		this.campus_id = campus_id;
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


	public String getCmpy_image() {
		return Cmpy_image;
	}


	public void setCmpy_image(String cmpy_image) {
		Cmpy_image = cmpy_image;
	}


	public Date getPosted_date() {
		return posted_date;
	}


	public void setPosted_date(Date posted_date) {
		this.posted_date = posted_date;
	}


	public String getRegistration_link() {
		return registration_link;
	}


	public void setRegistration_link(String registration_link) {
		this.registration_link = registration_link;
	}


	public String getPosition() {
		return position;
	}


	public void setPosition(String position) {
		this.position = position;
	}


	public String getDrive_info() {
		return drive_info;
	}


	public void setDrive_info(String drive_info) {
		this.drive_info = drive_info;
	}


	public Date getEnd_date() {
		return end_date;
	}


	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public int getCollege_id() {
		return college_id;
	}


	public void setCollege_id(int college_id) {
		this.college_id = college_id;
	}


	public int getCollege_campus_id() {
		return college_campus_id;
	}


	public void setCollege_campus_id(int college_campus_id) {
		this.college_campus_id = college_campus_id;
	}


	public Date getApplied_Date() {
		return applied_Date;
	}


	public void setApplied_Date(Date applied_Date) {
		this.applied_Date = applied_Date;
	}








	public String getAddress() {
		return address;
	}








	public void setAddress(String address) {
		this.address = address;
	}








	public String getApproval_status() {
		return approval_status;
	}








	public void setApproval_status(String approval_status) {
		this.approval_status = approval_status;
	}








	public String getCompName() {
		return compName;
	}








	public void setCompName(String compName) {
		this.compName = compName;
	}



}
