package com.company.bean;

import java.sql.Date;

public class Services_Bean {

	private int serviceid;
	private String serviceType;
	private String shortDesc;
	private String longDesc;
	private String image;
	private Date created;
	
	
	
	
	
	public Services_Bean() {
		super();
	}
	public Services_Bean(String serviceType, String shortDesc, String longDesc, String image) {
		super();
		this.serviceType = serviceType;
		this.shortDesc = shortDesc;
		this.longDesc = longDesc;
		this.image = image;
	}
	public Services_Bean(String serviceType, String shortDesc, String longDesc, String image, Date created) {
		super();
		this.serviceType = serviceType;
		this.shortDesc = shortDesc;
		this.longDesc = longDesc;
		this.image = image;
		this.created = created;
	}
	public Services_Bean(int serviceid, String serviceType, String shortDesc, String longDesc, String image,
			Date created) {
		super();
		this.serviceid = serviceid;
		this.serviceType = serviceType;
		this.shortDesc = shortDesc;
		this.longDesc = longDesc;
		this.image = image;
		this.created = created;
	}
	public int getServiceid() {
		return serviceid;
	}
	public void setServiceid(int serviceid) {
		this.serviceid = serviceid;
	}
	public String getServiceType() {
		return serviceType;
	}
	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}
	public String getShortDesc() {
		return shortDesc;
	}
	public void setShortDesc(String shortDesc) {
		this.shortDesc = shortDesc;
	}
	public String getLongDesc() {
		return longDesc;
	}
	public void setLongDesc(String longDesc) {
		this.longDesc = longDesc;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	
	
	
}
