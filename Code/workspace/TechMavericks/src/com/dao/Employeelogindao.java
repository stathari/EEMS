package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tgmc.Login;
import com.util.ConnectionPool;

public class Employeelogindao {
	
	String insertEmployeelogin= "insert into Employeelogin values(?,?)";
	String updateEmployeelogin = "update Employeelogin SET SAL_Emp_password=? where  Emp_ID=?";
	String deleteEmployeelogin = "delete EMPLOYEELogin where Emp_ID=? ";
	String selectEmployeelogin = "select * from Employeelogin where Emp_ID=?";

	Connection con=ConnectionPool.getConnection();
	public boolean createEmployeelogin(Login p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(insertEmployeelogin);
		ps.setString(1, p.getEmployeeid());
		ps.setString(2, p.getEpassword());
		
		ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	
	public boolean updateEmployeelogin(Login p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(updateEmployeelogin);
		ps.setString(1, p.getEmployeeid());
		ps.setString(2, p.getEpassword());
	
		ps.executeUpdate();
		return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean deleteEmployeelogin(String id)
	{
		try{
		PreparedStatement ps = con.prepareStatement(deleteEmployeelogin);
		ps.setString(1, id);
		ps.executeUpdate();
		return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	 public Login selectEmployeelogin(String id){
	    	
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectEmployeelogin);
	    		ps.setString(1, id);
	    		ResultSet rs =ps.executeQuery();
	    		if(rs.next())
	    		{
	    			Login p = new Login();
	    			p.setEmployeeid(rs.getString(1));
	    			p.setEpassword(rs.getString(2));
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
