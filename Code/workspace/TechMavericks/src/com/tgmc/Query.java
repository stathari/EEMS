package com.tgmc;

public class Query {
String name;
String email;
String phone;
String ques;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
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
public String getQues() {
	return ques;
}
public void setQues(String ques) {
	this.ques = ques;
}
public Query(String name, String email, String phone, String ques) {
	super();
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.ques = ques;
}
public Query() {
	super();
}

}
