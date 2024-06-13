package com.company.bean;

import java.sql.Date;

public class Industrial_Bean {

	private int industrial_id;
	private int comp_id;
	private Date posted_date;
	private String training_info;
	private Date visit_date;
	private String status;
	private int college_industrial_id;
    private int college_id;
	private Date applied_date;
	private String name;
	private String cmpy_image;
	private String address;
	private String email;
	private String website;
	private String approval_status;

	
	public Industrial_Bean() {
		super();
	}
	
	
	public Industrial_Bean(int comp_id, String training_info) {
		super();
		this.comp_id = comp_id;
		this.training_info = training_info;
		this.visit_date = visit_date;
	}

	
	
	public Industrial_Bean(int industrial_id, int comp_id, String training_info, Date visit_date, int college_id) {
		super();
		this.industrial_id = industrial_id;
		this.comp_id = comp_id;
		this.training_info = training_info;
		this.visit_date = visit_date;
		this.setCollege_id(college_id);
	}

	public Industrial_Bean(int comp_id, String name, String cmpy_image, Date posted_date,
			String training_info, Date visit_date, String status) {
		super();
		this.comp_id = comp_id;
		this.name = name;
		this.cmpy_image = cmpy_image;
		this.posted_date = posted_date;
		this.training_info = training_info;
		this.visit_date = visit_date;
		this.status = status;
		
	}

	public Industrial_Bean(int industrial_id, int comp_id, String name, String cmpy_image,
			Date posted_date, String training_info, Date visit_date, String status) {
		super();
		this.industrial_id = industrial_id;
		this.comp_id = comp_id;
		this.name = name;
		this.cmpy_image = cmpy_image;
		this.posted_date = posted_date;
		this.training_info = training_info;
		this.visit_date = visit_date;
		this.status = status;
	}
	
	public int getIndustrial_id() {
		return industrial_id;
	}
	
	public void setIndustrial_id(int industrial_id) {
		this.industrial_id = industrial_id;
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
		return cmpy_image;
	}
	
	public void setCmpy_image(String cmpy_image) {
		this.cmpy_image = cmpy_image;
	}
	
	public Date getPosted_date() {
		return posted_date;
	}
	
	public void setPosted_date(Date posted_date) {
		this.posted_date = posted_date;
	}
	
	public String getTraining_info() {
		return training_info;
	}
	
	public void setTraining_info(String training_info) {
		this.training_info = training_info;
	}
	
	public Date getVisit_date() {
		return visit_date;
	}
	
	public void setVisit_date(Date visit_date) {
		this.visit_date = visit_date;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}

	public Date getApplied_date() {
		return applied_date;
	}

	public int getCollege_id() {
		return college_id;
	}

	public void setCollege_id(int college_id) {
		this.college_id = college_id;
	}

	public void setApplied_date(Date applied_date) {
		this.applied_date = applied_date;
	}

	public int getCollege_industrial_id() {
		return college_industrial_id;
	}

	public void setCollege_industrial_id(int college_industrial_id) {
		this.college_industrial_id = college_industrial_id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}


	public String getApproval_status() {
		return approval_status;
	}


	public void setApproval_status(String approval_status) {
		this.approval_status = approval_status;
	}

}
