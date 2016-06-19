package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.tgmc.Department;


import com.util.ConnectionPool;

public class Departmentdao {
	String insertDepartment= "insert into Department values(?,?,?,?)";
	String updateDepartment = "update Department SET DPT_ID=?, DPT_DESIGNATION=?, DPT_NAME=? where DPT_EID=?";
	String deleteDepartment = "delete EMPLOYEE where DPT_EID=? ";
	String selectDepartment = "select * from Department where DPT_EID=?";
	String selectAll= "select * from DEPARTMENT";
	Connection con=ConnectionPool.getConnection();
	public boolean createDepartment(Department p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(insertDepartment);
		ps.setString(1, p.getEdid());
		ps.setString(2, p.getDid());
		ps.setInt(3, p.getDesg());
		ps.setString(4, p.getName());
		
		ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	public boolean updateDepartment(Department p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(updateDepartment);
		ps.setString(1, p.getEdid());
		ps.setString(2, p.getDid());
		ps.setInt(3, p.getDesg());
		ps.setString(4, p.getName());
		ps.executeUpdate();
		return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean deleteDepartment(String id)
	{
		try{
		PreparedStatement ps = con.prepareStatement(deleteDepartment);
		ps.setString(1, id);
		ps.executeUpdate();
		return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	 public Department selectDepartment(String id){
	    	
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectDepartment);
	    		ps.setString(1, id);
	    		ResultSet rs =ps.executeQuery();
	    		if(rs.next())
	    		{
	    			Department p = new Department();
	    			p.setEdid(rs.getString(1));
	    			p.setDid(rs.getString(2));
	    			p.setDesg(rs.getInt(3));
	    			p.setName(rs.getString(4));
	    			return p;
	    		}
	    		else
	    			return null;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 public List<Department> findAll(){
	    	
		    List<Department> list = new ArrayList<Department>();
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectAll);
	    	  
	    		ResultSet rs =ps.executeQuery();
	    		while(rs.next())
	    		{
	    			Department p = new Department();
	    			p.setEdid(rs.getString(1));
	    			p.setDid(rs.getString(2));
	    			p.setDesg(rs.getInt(3));
	    			p.setName(rs.getString(4));
	    			list.add(p);
	    		}
	    		return list;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 
	
	
}
