package com.dao;

import java.sql.*;

import com.util.ConnectionPool;
public class Logindao {

private String selectRole = "select user_desgn from users where user_id=? AND user_pswrd=?";
	
	Connection con;
	int r;
	public int isValidUser(String uname,String pwd)
	{
		try{con = ConnectionPool.getConnection();
		PreparedStatement ps = con.prepareStatement(selectRole);
		ps.setString(1, uname);
		ps.setString(2, pwd);
		ResultSet rs = ps.executeQuery();
		if(rs.next()){
			System.out.println(rs.getInt(1));
			 r=(rs.getInt(1));
			 return r;
		}
		else{
			return -1;
		}
		}catch(Exception e){
			e.printStackTrace();
			return -1;
		}
	}
}