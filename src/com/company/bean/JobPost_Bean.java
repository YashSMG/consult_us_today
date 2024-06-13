package com.company.bean;

import java.sql.Blob;
import java.sql.Date;

public class JobPost_Bean {
	
	private int posting_id;
	private int comp_id;
	private String name;
	private String image;
	private String email;
	private String job_title;
	private String technology;
	private int type_id;
	private String status;
	private Date posted_date;
	private String other;
	private int vacancies;
	private Date end_date;
	private String address;
	private String jobtype;
	private String website;
	private String applied_for;
	private String curr_location;
	private String pastexp;
	private String approval_satus;
	
	
	public JobPost_Bean() {
		super();
	}
	
	
	
	
	
	public JobPost_Bean(int comp_id, String job_title, String technology, int type_id, String other, int vacancies) {
		super();
		this.comp_id = comp_id;
		this.job_title = job_title;
		this.technology = technology;
		this.type_id = type_id;
		this.other = other;
		this.vacancies = vacancies;
	}





	public JobPost_Bean(int comp_id, String name, String image, String email, String job_title, String technology,
			int type_id, String status, Date posted_date, String other, int vacancies, Date end_date) {
		super();
		this.comp_id = comp_id;
		this.name = name;
		this.image = image;
		this.email = email;
		this.job_title = job_title;
		this.technology = technology;
		this.type_id = type_id;
		this.status = status;
		this.posted_date = posted_date;
		this.other = other;
		this.vacancies = vacancies;
		this.end_date = end_date;
	}
	public JobPost_Bean(int posting_id, int comp_id, String name, String image, String email, String job_title,
			String technology, int type_id, String status, Date posted_date, String other, int vacancies,
			Date end_date) {
		super();
		this.posting_id = posting_id;
		this.comp_id = comp_id;
		this.name = name;
		this.image = image;
		this.email = email;
		this.job_title = job_title;
		this.technology = technology;
		this.type_id = type_id;
		this.status = status;
		this.posted_date = posted_date;
		this.other = other;
		this.vacancies = vacancies;
		this.end_date = end_date;
	}
	public int getPosting_id() {
		return posting_id;
	}
	public void setPosting_id(int posting_id) {
		this.posting_id = posting_id;
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJob_title() {
		return job_title;
	}
	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}
	public String getTechnology() {
		return technology;
	}
	public void setTechnology(String technology) {
		this.technology = technology;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getPosted_date() {
		return posted_date;
	}
	public void setPosted_date(Date posted_date) {
		this.posted_date = posted_date;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public int getVacancies() {
		return vacancies;
	}
	public void setVacancies(int vacancies) {
		this.vacancies = vacancies;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}





	public String getAddress() {
		return address;
	}





	public void setAddress(String address) {
		this.address = address;
	}





	public String getJobtype() {
		return jobtype;
	}





	public void setJobtype(String jobtype) {
		this.jobtype = jobtype;
	}





	public String getWebsite() {
		return website;
	}





	public void setWebsite(String website) {
		this.website = website;
	}





	public String getApplied_for() {
		return applied_for;
	}





	public void setApplied_for(String applied_for) {
		this.applied_for = applied_for;
	}





	public String getCurr_location() {
		return curr_location;
	}





	public void setCurr_location(String curr_location) {
		this.curr_location = curr_location;
	}





	public String getPastexp() {
		return pastexp;
	}





	public void setPastexp(String pastexp) {
		this.pastexp = pastexp;
	}





	public String getApproval_satus() {
		return approval_satus;
	}





	public void setApproval_satus(String approval_satus) {
		this.approval_satus = approval_satus;
	}
	
	

}
