package com.company.bean;

import java.util.Date;

public class NoticeBoard_Bean {
	private int notice_id;
   private String subject ;
   private Date start_date ;
   private String notice_description;
   private Date end_date;
  
   private String status;
   private String approval_status;
   
   public NoticeBoard_Bean() {
	   super();
   }
 
   
   
public NoticeBoard_Bean(String subject, Date start_date, Date end_date, String notice_description, String status,
		String approval_status) {
	super();
	this.subject = subject;
	this.start_date = start_date;
	this.end_date = end_date;
	this.notice_description = notice_description;
	this.status = status;
	this.approval_status = approval_status;
}


public NoticeBoard_Bean(int notice_id, String subject, Date start_date,  String notice_description,Date end_date) {
	super();
	this.notice_id = notice_id;
	this.subject = subject;
	this.start_date = start_date;
	this.notice_description = notice_description;	
	this.end_date = end_date;

	
}


public NoticeBoard_Bean(String subject, Date start_date, String notice_description, Date end_date) {
	super();
	this.subject = subject;
	this.start_date = start_date;
	this.notice_description = notice_description;
	this.end_date = end_date;
}



public int getNotice_id() {
	return notice_id;
}
public void setNotice_id(int notice_id) {
	this.notice_id = notice_id;
}
public String getSubject() {
	return subject;
}
public void setSubject(String subject) {
	this.subject = subject;
}
public Date getStart_date() {
	return start_date;
}
public void setStart_date(Date start_date) {
	this.start_date = start_date;
}
public Date getEnd_date() {
	return end_date;
}
public void setEnd_date(Date end_date) {
	this.end_date = end_date;
}
public String getNotice_description() {
	return notice_description;
}
public void setNotice_description(String notice_description) {
	this.notice_description = notice_description;
}



public String getStatus() {
	return status;
}



public void setStatus(String status) {
	this.status = status;
}



public String getApproval_status() {
	return approval_status;
}



public void setApproval_status(String approval_status) {
	this.approval_status = approval_status;
}

}
