package com.csm.entity;

public class enclosures {
	private int enclosures_id;
	private String enclosures_type;
	private String enclosures_locate;
	
	
	
	//getter and setter 
	public int getEnclosures_id() {
		return enclosures_id;
	}
	public void setEnclosures_id(int enclosures_id) {
		this.enclosures_id = enclosures_id;
	}
	public String getEnclosures_type() {
		return enclosures_type;
	}
	public void setEnclosures_type(String enclosures_type) {
		this.enclosures_type = enclosures_type;
	}
	public String getEnclosures_locate() {
		return enclosures_locate;
	}
	public void setEnclosures_locate(String enclosures_locate) {
		this.enclosures_locate = enclosures_locate;
	}
	
	
	
	//constructor without id
	public enclosures(String enclosures_type, String enclosures_locate) {
		super();
		this.enclosures_type = enclosures_type;
		this.enclosures_locate = enclosures_locate;
	}
	//constructor with id
	public enclosures(int enclosures_id, String enclosures_type, String enclosures_locate) {
		super();
		this.enclosures_id = enclosures_id;
		this.enclosures_type = enclosures_type;
		this.enclosures_locate = enclosures_locate;
	}


	
	

















}




