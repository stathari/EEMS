package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.tgmc.Query;
import com.util.ConnectionPool;

public class Querydao {
	String insertQuery= "insert into Queries values(?,?,?,?)";
	String selectQuery = "select * from Queries where SAL_ID=?";
	String selectAll = "select * from Queries";
	Connection con=ConnectionPool.getConnection();
	public boolean createQuery(Query p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(insertQuery);
		ps.setString(1, p.getName());
		ps.setString(2, p.getEmail());
		ps.setString(3, p.getPhone());
		ps.setString(4, p.getQues());
		ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	 public Query selectQuery(String id){
	    	
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectQuery);
	    		ps.setString(1, id);
	    		ResultSet rs =ps.executeQuery();
	    		if(rs.next())
	    		{
	    			Query p = new Query();
	    			p.setName(rs.getString(1));
	    			p.setEmail(rs.getString(2));
	    			p.setPhone(rs.getString(3));
	    			p.setQues(rs.getString(4));
	    			return p;
	    		}
	    		else
	    			return null;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 public List<Query> findAll(){
	    	
		    List<Query> list = new ArrayList<Query>();
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectAll);
	    	  
	    		ResultSet rs =ps.executeQuery();
	    		while(rs.next())
	    		{
	    			Query p = new Query();
	    			p.setName(rs.getString(1));
	    			p.setEmail(rs.getString(2));
	    			p.setPhone(rs.getString(3));
	    			p.setQues(rs.getString(4));
	    			list.add(p);
	    		}
	    		return list;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	
	
	
	
	
	
}
