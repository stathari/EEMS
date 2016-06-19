package com.tgmc;

public class Voucher {
	
	String vid;
	
	String type;
	float exp;
	String text;
	public int getF() {
		return f;
	}
	public void setF(int f) {
		this.f = f;
	}
	int f;
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getVid() {
		return vid;
	}
	public void setVid(String vid) {
		this.vid = vid;
	}
	public float getExp() {
		return exp;
	}
	public void setExp(float exp) {
		this.exp = exp;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
	
	public Voucher(String vid, String type, float exp, String text, int f) {
		super();
		this.vid = vid;
		this.type = type;
		this.exp = exp;
		this.text = text;
		this.f = f;
	}
	public Voucher() {
		super();
	}
	

}
