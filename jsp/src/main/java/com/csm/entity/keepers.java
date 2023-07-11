package com.csm.entity;
import java.util.Date;

public class keepers {
	
	private int keepers_id;
	private String keepers_name;
	private Date date_of_birth;
	private String keepers_rank;
	
	
	//geter setter method
	public int getKeepers_id() {
		return keepers_id;
	}
	public void setKeepers_id(int keepers_id) {
		this.keepers_id = keepers_id;
	}
	public String getKeepers_name() {
		return keepers_name;
	}
	public void setKeepers_name(String keepers_name) {
		this.keepers_name = keepers_name;
	}
	public Date getDate_of_birth() {
		return date_of_birth;
	}
	public void setDate_of_birth(Date date_of_birth) {
		this.date_of_birth = date_of_birth;
	}
	public String getKeepers_rank() {
		return keepers_rank;
	}
	public void setKeepers_rank(String keepers_rank) {
		this.keepers_rank = keepers_rank;
	}
	
	
	
	//constructor without id
	
	public keepers(String keepers_name, Date date_of_birth, String keepers_rank) {
		super();
		this.keepers_name = keepers_name;
		this.date_of_birth = date_of_birth;
		this.keepers_rank = keepers_rank;
	}
	
	
	//constructor with id
	public keepers(int keepers_id, String keepers_name, Date date_of_birth, String keepers_rank) {
		super();
		this.keepers_id = keepers_id;
		this.keepers_name = keepers_name;
		this.date_of_birth = date_of_birth;
		this.keepers_rank = keepers_rank;
	}
	
	
	

	
	

	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
}
