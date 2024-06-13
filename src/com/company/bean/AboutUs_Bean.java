package com.company.bean;

public class AboutUs_Bean {

	private int id;
	private String name;
	private String designation;
	private String description;
	private String image;
	
	
	
	
	public AboutUs_Bean() {
		super();
	}
	public AboutUs_Bean(String name, String designation, String description, String image) {
		super();
		this.name = name;
		this.designation = designation;
		this.description = description;
		this.image = image;
	}
	public AboutUs_Bean(int id, String name, String designation, String description, String image) {
		super();
		this.id = id;
		this.name = name;
		this.designation = designation;
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
