package com.tgmc;

public class Salary {
	String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public float getSal() {
		return sal;
	}
	public void setSal(float sal) {
		this.sal = sal;
	}
	public float getLimit() {
		return limit;
	}
	public void setLimit(float limit) {
		this.limit = limit;
	}
	float sal;
	float limit;
	public Salary(String id, float sal, float limit) {
		super();
		this.id = id;
		this.sal = sal;
		this.limit = limit;
	}
	public Salary() {
		super();
	}
	

}
