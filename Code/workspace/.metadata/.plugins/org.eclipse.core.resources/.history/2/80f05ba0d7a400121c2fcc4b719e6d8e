package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.tgmc.Voucher;
import com.util.ConnectionPool;

public class Voucherdao {

	String insertVoucher= "insert into Voucher values(?,?,?,?,?)";
	String updateVoucher = "update Voucher set vou_type=?,vou_expense=?, vou_note=?,vou_flag=? where vou_id=?";
	String selectVoucher = "select * from Voucher where vou_id=?";
	
	String deleteVoucher = "delete voucher where vou_id = ?";
	String selectAll= "select * from Voucher where Flag=?";
	String selectVouchers = "select * from Voucher where vou_flag=?";
	
	Connection con=ConnectionPool.getConnection();
	public boolean updateVoucher(Voucher p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(updateVoucher);

		ps.setString(5, p.getVid());
		ps.setString(1, p.getType());
		ps.setFloat(2, p.getExp());
	
		ps.setString(3, p.getText());
		ps.setInt(4, p.getF());
	ps.executeUpdate();
		return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	public boolean deleteVoucher(String id)
	{
		try{
		PreparedStatement ps = con.prepareStatement(deleteVoucher);
		ps.setString(1, id);
		ps.executeUpdate();
		return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	
	public boolean createVoucher(Voucher p)
	{
		try{
		PreparedStatement ps = con.prepareStatement(insertVoucher);
	
		ps.setString(1, p.getVid());
		ps.setString(2, p.getType());
		ps.setFloat(3, p.getExp());
	
		ps.setString(4, p.getText());
		ps.setInt(5, p.getF());
		ps.executeUpdate();
		
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
		return false;
	}
	 public Voucher selectVoucher(String id){
	    	
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectVoucher);
	    		ps.setString(1, id);
	    		ResultSet rs =ps.executeQuery();
	    		if(rs.next())
	    		{
	    		Voucher p = new Voucher();
	    			p.setVid(rs.getString(1));
	    		
	    			p.setType(rs.getString(2));
	    			p.setExp(rs.getFloat(3));
	    			p.setText(rs.getString(4));
	    			p.setF(Integer.parseInt(rs.getString(5)));
	    			return p;
	    		}
	    		else
	    			return null;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 public List<Voucher> selectVouchers(int id){
	    	List<Voucher> list  = new ArrayList<Voucher>();
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectVouchers);
	    		ps.setInt(1, id);
	    		ResultSet rs =ps.executeQuery();
	    		while(rs.next())
	    		{
	    		Voucher p = new Voucher();
	    			p.setVid(rs.getString(1));
	    		
	    			p.setType(rs.getString(2));
	    			p.setExp(rs.getFloat(3));
	    			p.setText(rs.getString(4));
	    			p.setF(Integer.parseInt(rs.getString(5)));
	    			list.add(p);
	    		}
	    	
	    			return list;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 public List<Voucher> findAll(){
	    	
		    List<Voucher> list = new ArrayList<Voucher>();
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectAll);
	    	  
	    		ResultSet rs =ps.executeQuery();
	    		while(rs.next())
	    		{
	    		Voucher p = new Voucher();
	    			p.setVid(rs.getString(1));
	    			p.setType(rs.getString(2));
	    			p.setExp(rs.getFloat(3));
	    			p.setText(rs.getString(4));
	    			p.setF(Integer.parseInt(rs.getString(5)));
	    			list.add(p);
	    		}
	    		return list;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 public List<Voucher> showAll(){
	    	
		    List<Voucher> list = new ArrayList<Voucher>();
	    	try{
	    		PreparedStatement ps = con.prepareStatement(selectVouchers);
	    	  
	    		ResultSet rs =ps.executeQuery();
	    		while(rs.next())
	    		{
	    		Voucher p = new Voucher();
	    			p.setVid(rs.getString(1));
	    			p.setType(rs.getString(2));
	    			p.setExp(rs.getFloat(3));
	    			p.setText(rs.getString(4));
	    			p.setF(Integer.parseInt(rs.getString(5)));
	    			list.add(p);
	    		}
	    		return list;
	    		}catch(Exception e){
	    			e.printStackTrace();
	    			return null;
	    		}
	    	
	    }
	 
	
	
}
