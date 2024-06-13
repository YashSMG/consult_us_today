package com.company.bean;

public class SuccessStories_Bean {

	private int id;
	private String name;
	private String designation;
	private String company;
	private String description;
	private String image;
	
	
	
	public SuccessStories_Bean() {
		super();
	}
	
	public SuccessStories_Bean(String name, String designation, String company, String description, String image) {
		super();
		this.name = name;
		this.designation = designation;
		this.company = company;
		this.description = description;
		this.image = image;
	}
	
	public SuccessStories_Bean(int id, String name, String designation, String company, String description,
			String image) {
		super();
		this.id = id;
		this.name = name;
		this.designation = designation;
		this.company = company;
		this.description = description;
		this.image = image;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getDesignation() {
		return designation;
	}
	
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	
	public String getCompany() {
		return company;
	}
	
	public void setCompany(String company) {
		this.company = company;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getImage() {
		return image;
	}
	
	public void setImage(String image) {
		this.image = image;
	}
	
	
}
