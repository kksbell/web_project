package com.tip.model;

public class TipBean {
	private String ID;
	private String pno;
	private String location;
	private String tip;
	private String sshot;
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
	public String getSshot() {
		return sshot;
	}
	public void setSshot(String sshot) {
		this.sshot = sshot;
	}
	public TipBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TipBean(String iD, String pno, String location, String tip, String sshot) {
		super();
		ID = iD;
		this.pno = pno;
		this.location = location;
		this.tip = tip;
		this.sshot = sshot;
	}
}
