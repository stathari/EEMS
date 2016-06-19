package com.tgmc;

public class Department {
	String did;
	String edid;
	public String getEdid() {
		return edid;
	}
	public void setEdid(String edid) {
		this.edid = edid;
	}
int desg;
	public int getDesg() {
	return desg;
}
public void setDesg(int desg) {
	this.desg = desg;
}
	String name;
	
	
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Department() {
		super();
	}
	public Department(String did, String edid, int desg, String name) {
		super();
		this.did = did;
		this.edid = edid;
		this.desg = desg;
		this.name = name;
	}
		
}
