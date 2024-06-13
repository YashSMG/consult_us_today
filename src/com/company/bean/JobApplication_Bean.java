package com.company.bean;

public class JobApplication_Bean {

	private int job_appln_id;
	private int comp_id;
	private int student_id;
	private String applied_for;
	private String current_location;
	private String pastexperience;
	private String description;
	private String name;
	private String image;
	private String comp_name;
	private String approval_status;
	

	public JobApplication_Bean() {
		super();
	}
	public JobApplication_Bean(int comp_id, int student_id, String applied_for, String current_location,
			String pastexperience, String description) {
		super();
		this.comp_id = comp_id;
		this.student_id = student_id;
		this.applied_for = applied_for;
		this.current_location = current_location;
		this.pastexperience = pastexperience;
		this.description = description;
	}
	public JobApplication_Bean(int job_appln_id, int comp_id, int student_id, String applied_for,
			String current_location, String pastexperience, String description) {
		super();
		this.job_appln_id = job_appln_id;
		this.comp_id = comp_id;
		this.student_id = student_id;
		this.applied_for = applied_for;
		this.current_location = current_location;
		this.pastexperience = pastexperience;
		this.description = description;
	}
	public int getJob_appln_id() {
		return job_appln_id;
	}
	public void setJob_appln_id(int job_appln_id) {
		this.job_appln_id = job_appln_id;
	}
	public int getComp_id() {
		return comp_id;
	}
	public void setComp_id(int comp_id) {
		this.comp_id = comp_id;
	}
	public int getStudent_id() {
		return student_id;
	}
	public void setStudent_id(int student_id) {
		this.student_id = student_id;
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
	public String getComp_name() {
		return comp_name;
	}
	public void setComp_name(String comp_name) {
		this.comp_name = comp_name;
	}
	public String getApproval_status() {
		return approval_status;
	}
	public void setApproval_status(String approval_status) {
		this.approval_status = approval_status;
	}
	
	
	
}
