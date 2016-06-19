package com.tgmc;

public class Reject {
String viid;
String notes;
public String getViid() {
	return viid;
}
public void setViid(String viid) {
	this.viid = viid;
}
public String getNotes() {
	return notes;
}
public void setNotes(String notes) {
	this.notes = notes;
}
public Reject(String viid, String notes) {
	super();
	this.viid = viid;
	this.notes = notes;
}
public Reject() {
	super();
}

}
