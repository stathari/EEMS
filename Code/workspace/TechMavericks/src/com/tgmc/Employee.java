package com.tgmc;

public class Employee {
String eid;
public String getEid() {
	return eid;
}
public void setEid(String eid) {
	this.eid = eid;
}
String fname;
String lname;
String gen;
String dob;
String marital;
String bgrp;
String email;
String phone;
String street;
String city;
String pincode;
String state;
String country;
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getGen() {
	return gen;
}
public void setGen(String gen) {
	this.gen = gen;
}
public String getDob() {
	return dob;
}
public void setDob(String dob) {
	this.dob = dob;
}
public String getMarital() {
	return marital;
}
public void setMarital(String marital) {
	this.marital = marital;
}
public String getBgrp() {
	return bgrp;
}
public void setBgrp(String bgrp) {
	this.bgrp = bgrp;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getStreet() {
	return street;
}
public void setStreet(String street) {
	this.street = street;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getPincode() {
	return pincode;
}
public void setPincode(String pincode) {
	this.pincode = pincode;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}

public Employee(String eid, String fname, String lname, String gen, String dob,
		String marital, String bgrp, String phone, String email, String street,
		String city, String pincode, String state, String country) {
	super();
	this.eid = eid;
	this.fname = fname;
	this.lname = lname;
	this.gen = gen;
	this.dob = dob;
	this.marital = marital;
	this.bgrp = bgrp;
	this.email = email;
	this.phone = phone;
	this.street = street;
	this.city = city;
	this.pincode = pincode;
	this.state = state;
	this.country = country;
}
public Employee() {
	super();
}


}
