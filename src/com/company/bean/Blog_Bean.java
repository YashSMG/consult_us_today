package com.company.bean;

import java.sql.Date;

public class Blog_Bean {

	private int blogid;
	private String title;
	private String posted_by;
	private String description;
	private Date published;
	private String image;
	
	
	
	
	public Blog_Bean() {
		super();
	}

	public Blog_Bean(String title, String posted_by, String description, String image) {
		super();
		this.title = title;
		this.setPosted_by(posted_by);
		this.description = description;
		this.image = image;
	}

	public Blog_Bean(String title, String posted_by, String description, Date published, String image) {
		super();
		this.title = title;
		this.setPosted_by(posted_by);
		this.description = description;
		this.setPublished(published);
		this.image = image;
	}

	public Blog_Bean(int blogid, String title, String posted_by, String description, Date published, String image) {
		super();
		this.blogid = blogid;
		this.title = title;
		this.setPosted_by(posted_by);
		this.description = description;
		this.setPublished(published);
		this.image = image;
	}
	
	public int getBlogid() {
		return blogid;
	}
	public void setBlogid(int blogid) {
		this.blogid = blogid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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

	public Date getPublished() {
		return published;
	}

	public void setPublished(Date published) {
		this.published = published;
	}

	public String getPosted_by() {
		return posted_by;
	}

	public void setPosted_by(String posted_by) {
		this.posted_by = posted_by;
	}
	
	
	
}
