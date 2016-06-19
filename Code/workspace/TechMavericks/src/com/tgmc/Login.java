package com.tgmc;

public class Login {
String employeeid;
String epassword;
int flg;
public int getFlg() {
	return flg;
}
public void setFlg(int flg) {
	this.flg = flg;
}
public String getEmployeeid() {
	return employeeid;
}
public void setEmployeeid(String employeeid) {
	this.employeeid = employeeid;
}
public String getEpassword() {
	return epassword;
}
public void setEpassword(String epassword) {
	this.epassword = epassword;
}

public Login(String employeeid, String epassword, int flg) {
	super();
	this.employeeid = employeeid;
	this.epassword = epassword;
	this.flg = flg;
}
public Login() {
	super();
}
 
}
