package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tgmc.Users;
import com.util.ConnectionPool;

public class Usersdao {
	String insertUsers= "insert into Users values(?,?,?)";
	String updateUsers = "update Users SET User_pswrd=?,User_desgn=?,where  User_ID=?";
	String selectUsers = "select * from Users where User_ID=?";
	
	Connection con=ConnectionPool.getConnection();
	public boolean createUsers(Users p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(insertUsers);
		ps.setString(1, p.getId());
		ps.setString(2, p.getPswrd());
		ps.setInt(3, p.getFlag());
		ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	public boolean updateUsers(Users p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(updateUsers);
		ps.setString(1, p.getId());
		ps.setString(2, p.getPswrd());
		ps.setInt(3, p.getFlag());
		ps.executeUpdate();
		return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	 public Users selectUsers(String id){
	    	
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectUsers);
	    		ps.setString(1, id);
	    		ResultSet rs =ps.executeQuery();
	    		if(rs.next())
	    		{
	    			Users p = new Users();
	    			p.setId(rs.getString(1));
	    			p.setPswrd(rs.getString(2));
	    			p.setFlag(Integer.parseInt(rs.getString(3)));
	    			return p;
	    		}
	    		else
	    			return null;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	
	
}
