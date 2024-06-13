package com.company.bean;

import java.sql.Date;

public class JobPost_Bean1 {
	private int  posting_id;
	private int comp_id;
	private String cmpy_image;
	private String job_title;
	private String technology;
	private int type_id;
	private String status;
	private Date posted_date;
	private String other;
	private int vacancies;
	private Date end_date;
	public JobPost_Bean1() {
		super();
	}
	public JobPost_Bean1(int comp_id, String cmpy_image, String job_title, String technology, int type_id,
			String status, Date posted_date, String other, int vacancies, Date end_date) {
		super();
		this.comp_id = comp_id;
		this.cmpy_image = cmpy_image;
		this.job_title = job_title;
		this.technology = technology;
		this.type_id = type_id;
		this.status = status;
		this.posted_date = posted_date;
		this.other = other;
		this.vacancies = vacancies;
		this.end_date = end_date;
	}
	public JobPost_Bean1(int posting_id, int comp_id, String cmpy_image, String job_title, String technology,
			int type_id, String status, Date posted_date, String other, int vacancies, Date end_date) {
		super();
		this.posting_id = posting_id;
		this.comp_id = comp_id;
		this.cmpy_image = cmpy_image;
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
	public String getCmpy_image() {
		return cmpy_image;
	}
	public void setCmpy_image(String cmpy_image) {
		this.cmpy_image = cmpy_image;
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
	
	
	
	}
