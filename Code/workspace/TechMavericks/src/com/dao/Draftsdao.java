package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.tgmc.Drafts;
import com.util.ConnectionPool;

public class Draftsdao {

	String insertDrafts= "insert into Drafts values(?,?,?,?)";
	String updateDrafts = "update Drafts set dft_type=?,dft_expense=?, dft_note=? where dft_id=?";
	String deleteDrafts = "delete Drafts where dft_id = ?";
	String selectAll= "select * from Drafts";
	String selectDrafts = "select * from Drafts where dft_id=?";
	
	Connection con=ConnectionPool.getConnection();
	public boolean updateDrafts(Drafts p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(updateDrafts);

		ps.setString(1, p.getDid());
		ps.setString(2, p.getDtype());
		ps.setFloat(3, p.getDexp());
	
		ps.setString(4, p.getDnote());
	
	ps.executeUpdate();
		return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean deleteDrafts(String id)
	{
		try{
		PreparedStatement ps = con.prepareStatement(deleteDrafts);
		ps.setString(1, id);
		ps.executeUpdate();
		return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	
	public boolean createDrafts(Drafts p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(insertDrafts);
	
		ps.setString(1, p.getDid());
		ps.setString(2, p.getDtype());
		ps.setFloat(3, p.getDexp());
	
		ps.setString(4, p.getDnote());
		ps.executeUpdate();
		
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	 public Drafts selectDrafts(String id){
	    	
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectDrafts);
	    		ps.setString(1, id);
	    		ResultSet rs =ps.executeQuery();
	    		if(rs.next())
	    		{
	    		Drafts p = new Drafts();
	    			p.setDid(rs.getString(1));
	    		
	    			p.setDtype(rs.getString(2));
	    			p.setDexp(rs.getFloat(3));
	    			p.setDnote(rs.getString(4));
	    		 
	    			return p;
	    		}
	    		else
	    			return null;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 public List<Drafts> selectDraftss(int id){
	    	List<Drafts> list  = new ArrayList<Drafts>();
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectDrafts);
	    		ps.setInt(1, id);
	    		ResultSet rs =ps.executeQuery();
	    		while(rs.next())
	    		{
	    		Drafts p = new Drafts();
	    			p.setDid(rs.getString(1));
	    		
	    			p.setDtype(rs.getString(2));
	    			p.setDexp(rs.getFloat(3));
	    			p.setDnote(rs.getString(4));
	    		 
	    			list.add(p);
	    		}
	    	
	    			return list;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 public List<Drafts> findAll(){
	    	
		    List<Drafts> list = new ArrayList<Drafts>();
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectAll);
	    	  
	    		ResultSet rs =ps.executeQuery();
	    		while(rs.next())
	    		{
	    		Drafts p = new Drafts();
	    			p.setDid(rs.getString(1));
	    			p.setDtype(rs.getString(2));
	    			p.setDexp(rs.getFloat(3));
	    			p.setDnote(rs.getString(4));
	    		 
	    			list.add(p);
	    		}
	    		return list;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 public List<Drafts> showAll(){
	    	
		    List<Drafts> list = new ArrayList<Drafts>();
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectDrafts);
	    	  
	    		ResultSet rs =ps.executeQuery();
	    		while(rs.next())
	    		{
	    		Drafts p = new Drafts();
	    			p.setDid(rs.getString(1));
	    			p.setDtype(rs.getString(2));
	    			p.setDexp(rs.getFloat(3));
	    			p.setDnote(rs.getString(4));
	    		 
	    			list.add(p);
	    		}
	    		return list;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	
	    	
	    }
	 
	
	
}
