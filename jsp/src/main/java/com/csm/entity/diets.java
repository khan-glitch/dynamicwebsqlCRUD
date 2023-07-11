package com.csm.entity;

public class diets {
	
private int diets_id;
private int no_of_feeds;
private String diets_type;



//getter and setter
public int getDiets_id() {
	return diets_id;
}
public void setDiets_id(int diets_id) {
	this.diets_id = diets_id;
}
public int getNo_of_feeds() {
	return no_of_feeds;
}

public void setNo_of_feeds(int no_of_feeds) {
	this.no_of_feeds = no_of_feeds;
}
public String getDiets_type() {
	return diets_type;
}
public void setDiets_type(String diets_type) {
	this.diets_type = diets_type;
}



//consturctor without  id
public diets(int no_of_feeds, String diets_type) {
	super();
	this.no_of_feeds = no_of_feeds;
	this.diets_type = diets_type;
}



//consturctor with  id
public diets(int diets_id, int no_of_feeds, String diets_type) {
	super();
	this.diets_id = diets_id;
	this.no_of_feeds = no_of_feeds;
	this.diets_type = diets_type;
}






}
