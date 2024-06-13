package com.company.bean;

public class JobPostingNotification_Bean {
	private int notification_id;
	private int comp_id;
	private int std_id;
	private int posting_appln_id;
    private String title;
	private String massege;
	public JobPostingNotification_Bean() {
		super();
	}
	public JobPostingNotification_Bean(int comp_id, int std_id, int posting_appln_id, String title, String massege) {
		super();
		this.comp_id = comp_id;
		this.std_id = std_id;
		this.posting_appln_id = posting_appln_id;
		this.title = title;
		this.massege = massege;
	}
	public JobPostingNotification_Bean(int notification_id, int comp_id, int std_id, int posting_appln_id, String title,
			String massege) {
		super();
		this.notification_id = notification_id;
		this.comp_id = comp_id;
		this.std_id = std_id;
		this.posting_appln_id = posting_appln_id;
		this.title = title;
		this.massege = massege;
	}
	public int getNotification_id() {
		return notification_id;
	}
	public void setNotification_id(int notification_id) {
		this.notification_id = notification_id;
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
	public int getPosting_appln_id() {
		return posting_appln_id;
	}
	public void setPosting_appln_id(int posting_appln_id) {
		this.posting_appln_id = posting_appln_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMassege() {
		return massege;
	}
	public void setMassege(String massege) {
		this.massege = massege;
	}

}
