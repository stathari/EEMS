package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.tgmc.Salary;

import com.util.ConnectionPool;

public class Salarydao {
	String insertSalary= "insert into Salary values(?,?,?)";
	String updateSalary = "update Salary SET SAL_SALARY=?, SAL_EXPLIMIT=? where  SAL_ID=?";
	String deleteSalary = "delete EMPLOYEE where SAL_ID=? ";
	String selectSalary = "select * from Salary where SAL_ID=?";
	String selectAll = "select * from Salary";
	Connection con=ConnectionPool.getConnection();
	public boolean createSalary(Salary p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(insertSalary);
		ps.setString(1, p.getId());
		ps.setFloat(2, p.getSal());
		ps.setFloat(3, p.getLimit());
		
		ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	
	public boolean updateSalary(Salary p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(updateSalary);
		ps.setString(1, p.getId());
		ps.setString(2, p.getSal()+"");
		ps.setString(3, p.getLimit()+"");
		ps.executeUpdate();
		return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean deleteSalary(String id)
	{
		try{
		PreparedStatement ps = con.prepareStatement(deleteSalary);
		ps.setString(1, id);
		ps.executeUpdate();
		return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	 public Salary selectSalary(String id){
	    	
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectSalary);
	    		ps.setString(1, id);
	    		ResultSet rs =ps.executeQuery();
	    		if(rs.next())
	    		{
	    			Salary p = new Salary();
	    			p.setId(rs.getString(1));
	    			p.setSal(rs.getFloat(2));
	    			p.setLimit(rs.getFloat(3));
	    			return p;
	    		}
	    		else
	    			return null;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 public List<Salary> findAll(){
	    	
		    List<Salary> list = new ArrayList<Salary>();
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectAll);
	    	  
	    		ResultSet rs =ps.executeQuery();
	    		while(rs.next())
	    		{
	    			Salary p = new Salary();
	    			p.setId(rs.getString(1));
	    			p.setSal(rs.getFloat(2));
	    			p.setLimit(rs.getFloat(3));
	    			list.add(p);
	    		}
	    		return list;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	
}
