package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.tgmc.Reject;

import com.util.ConnectionPool;

public class Rejectdao {

	String insertReject= "insert into Reject values(?,?)";
	String selectReject= "select * from Reject where rej_id=?";
	String selectAll= "select * from Reject where rej_id=?";	
	Connection con=ConnectionPool.getConnection();
		public boolean createReject(Reject p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(insertReject);
	
		ps.setString(1, p.getViid());
		ps.setString(2, p.getNotes());
		ps.executeUpdate();
		
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	 public Reject selectReject(String id){
	    	
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectReject);
	    		ps.setString(1, id);
	    		ResultSet rs =ps.executeQuery();
	    		if(rs.next())
	    		{
	    		Reject p = new Reject();
	    			p.setViid(rs.getString(1));
	    			p.setNotes(rs.getString(2));
	    			return p;
	    		}
	    		else
	    			return null;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 public List<Reject> findAll(){
	    	
		    List<Reject> list = new ArrayList<Reject>();
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectAll);
	    	  
	    		ResultSet rs =ps.executeQuery();
	    		while(rs.next())
	    		{
	    		Reject p = new Reject();
	    			p.setViid(rs.getString(1));
	    			p.setNotes(rs.getString(2));
	    			list.add(p);
	    		}
	    		return list;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 
}
