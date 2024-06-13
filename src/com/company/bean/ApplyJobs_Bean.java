package com.company.bean;

import java.sql.Date;

public class ApplyJobs_Bean {

	private int job_appln_id;
	private int job_id;
	private int comp_id;
	private int std_id;
    private String applied_for;
    private String current_location;
    private String pastexperience;
    private String description;
	private String name;
	private String email;
	private Long contact;
	private Date appliedDate;
    
    
    
    public ApplyJobs_Bean() {
		super();
	}

    

	public ApplyJobs_Bean(int job_appln_id, int job_id, int comp_id, int std_id, String applied_for,
			String current_location, String pastexperience, String description) {
		super();
		this.job_appln_id = job_appln_id;
		this.job_id = job_id;
		this.comp_id = comp_id;
		this.std_id = std_id;
		this.applied_for = applied_for;
		this.current_location = current_location;
		this.pastexperience = pastexperience;
		this.description = description;
	}



	public ApplyJobs_Bean(int job_id, int comp_id, int std_id, String applied_for, String current_location,
			String pastexperience, String description) {
		super();
		this.job_id = job_id;
		this.comp_id = comp_id;
		this.std_id = std_id;
		this.applied_for = applied_for;
		this.current_location = current_location;
		this.pastexperience = pastexperience;
		this.description = description;
	}
	
	
	
	
    
    
	public ApplyJobs_Bean(int job_id, int comp_id, int std_id, String applied_for, String current_location,
			String pastexperience, String description, String email, Long contact) {
		super();
		this.job_id = job_id;
		this.comp_id = comp_id;
		this.std_id = std_id;
		this.applied_for = applied_for;
		this.current_location = current_location;
		this.pastexperience = pastexperience;
		this.description = description;
		this.email = email;
		this.contact = contact;
	}



	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	public int getComp_id() {
		return comp_id;
	}
	public void setComp_id(int comp_id) {
		this.comp_id = comp_id;
	}
	public int getStd_id() {
		return std_id;
	}
	public void setStd_id(int std_id) {
		this.std_id = std_id;
	}
	public String getApplied_for() {
		return applied_for;
	}
	public void setApplied_for(String applied_for) {
		this.applied_for = applied_for;
	}
	public String getCurrent_location() {
		return current_location;
	}
	public void setCurrent_location(String current_location) {
		this.current_location = current_location;
	}
	public String getPastexperience() {
		return pastexperience;
	}
	public void setPastexperience(String pastexperience) {
		this.pastexperience = pastexperience;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getJob_appln_id() {
		return job_appln_id;
	}
	public void setJob_appln_id(int job_appln_id) {
		this.job_appln_id = job_appln_id;
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



	public Long getContact() {
		return contact;
	}



	public void setContact(Long contact) {
		this.contact = contact;
	}



	public Date getAppliedDate() {
		return appliedDate;
	}



	public void setAppliedDate(Date appliedDate) {
		this.appliedDate = appliedDate;
	}
	
	
	
    
    
}
