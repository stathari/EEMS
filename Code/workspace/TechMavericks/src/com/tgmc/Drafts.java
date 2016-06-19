package com.tgmc;

public class Drafts {
String Did;
public String getDid() {
	return Did;
}
public void setDid(String did) {
	Did = did;
}
public String getDtype() {
	return dtype;
}
public void setDtype(String dtype) {
	this.dtype = dtype;
}
public Drafts() {
	super();
}
public Drafts(String did, String dtype, float dexp, String dnote) {
	super();
	Did = did;
	this.dtype = dtype;
	this.dexp = dexp;
	this.dnote = dnote;
}
public float getDexp() {
	return dexp;
}
public void setDexp(float dexp) {
	this.dexp = dexp;
}
public String getDnote() {
	return dnote;
}
public void setDnote(String dnote) {
	this.dnote = dnote;
}
String dtype;
float dexp;
String dnote;
}
