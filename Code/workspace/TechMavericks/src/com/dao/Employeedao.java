package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.tgmc.Employee;
import com.util.ConnectionPool;

public class Employeedao {
	String insertEmployee= "insert into EMPLOYEE values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	String updateEmployee = "update EMPLOYEE SET EMP_FIRSTNAME=?,EMP_LASTNAME=?, EMP_GENDER=?, EMP_DOB=?,EMP_MARITAL=?, EMP_BGROUP=?, EMP_PHONE=?, EMP_EMAIL=?,  EMP_STREET=?, EMP_CITY=?, EMP_PINCODE=?, EMP_STATE=?, EMP_COUNTRY=? where EMP_ID=?";
	String deleteEmployee = "delete EMPLOYEE where EMP_ID=? ";
	String selectEmployee = "select * from EMPLOYEE where EMP_ID=?";
	String selectAll= "select * from EMPloyee";
	Connection con=ConnectionPool.getConnection();
	public boolean createEmployee(Employee p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(insertEmployee);
		ps.setString(1, p.getEid());
		ps.setString(2, p.getFname());
		ps.setString(3, p.getLname());
		ps.setString(4, p.getGen());
		ps.setString(5, p.getDob());
		ps.setString(6, p.getMarital());
		ps.setString(7, p.getBgrp());
		ps.setString(8, p.getPhone());
		ps.setString(9, p.getEmail());		
		ps.setString(10, p.getStreet());
		ps.setString(11, p.getCity());
		ps.setString(12, p.getPincode());
		ps.setString(13, p.getState());
		ps.setString(14, p.getCountry());
		ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	public boolean updateEmployee(Employee p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(updateEmployee);
		ps.setString(1, p.getEid());
		ps.setString(2, p.getFname());
		ps.setString(3, p.getLname());
		ps.setString(4, p.getGen());
		ps.setString(5, p.getDob());
		ps.setString(6, p.getMarital());
		ps.setString(7, p.getBgrp());
		ps.setString(8, p.getPhone());
		ps.setString(9, p.getEmail());
		ps.setString(10, p.getStreet());
		ps.setString(11, p.getCity());
		ps.setString(12, p.getPincode());
		ps.setString(13, p.getState());
		ps.setString(14, p.getCountry());
		ps.executeUpdate();
		return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean deleteEmployee(String id)
	{
		try{
		PreparedStatement ps = con.prepareStatement(deleteEmployee);
		ps.setString(1, id);
		ps.executeUpdate();
		return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	 public Employee selectEmployee(String id){
	    	
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectEmployee);
	    		ps.setString(1, id);
	    		ResultSet rs =ps.executeQuery();
	    		if(rs.next())
	    		{
	    			Employee p = new Employee();
	    			p.setEid(rs.getString(1));
	    			p.setFname(rs.getString(2));
	    			p.setLname(rs.getString(3));
	    			p.setGen(rs.getString(4));
	    			p.setDob(rs.getString(5));
	    			p.setMarital(rs.getString(6));
	    			p.setBgrp(rs.getString(7));
	    			p.setEmail(rs.getString(9));
		    		p.setPhone(rs.getString(8));
	    			p.setStreet(rs.getString(10));
	    			p.setCity(rs.getString(11));
	    			p.setPincode(rs.getString(12));
	    			p.setState(rs.getString(13));
	    			p.setCountry(rs.getString(14));
	    			return p;
	    		}
	    		else
	    			return null;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	
	 public List<Employee> findAll(){
	    	
		    List<Employee> list = new ArrayList<Employee>();
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectAll);
	    	  
	    		ResultSet rs =ps.executeQuery();
	    		while(rs.next())
	    		{
	    			Employee p = new Employee();
	    			p.setEid(rs.getString(1));
	    			p.setFname(rs.getString(2));
	    			p.setLname(rs.getString(3));
	    			p.setGen(rs.getString(4));
	    			p.setDob(rs.getString(5));
	    			p.setMarital(rs.getString(6));
	    			p.setBgrp(rs.getString(7));
	    			p.setPhone(rs.getString(8));
	    			p.setEmail(rs.getString(9));
		    		
	    			p.setStreet(rs.getString(10));
	    			p.setCity(rs.getString(11));
	    			p.setPincode(rs.getString(12));
	    			p.setState(rs.getString(13));
	    			p.setCountry(rs.getString(14));
	    			list.add(p);
	    		}
	    		return list;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 
	
}