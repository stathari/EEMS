<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*, com.tgmc.*,com.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="pl" xml:lang="pl">
<head>


<title>Add employee</title>
<link rel="stylesheet" type="text/css" href="scrstyles/adminpanel.css" media="screen" />
<link rel="stylesheet" type="text/css" href="scrstyles/adminpanelnav.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".box .h_title").not(this).next("ul").hide("normal");
	$(".box .h_title").not(this).next("#home").show("normal");
	$(".box").children(".h_title").click( function() { $(this).next("ul").slideToggle(); });
});
</script>
</head>
<body>
				<%
					 String UN=(String)session.getAttribute("USERNAME");
					String PW=(String)session.getAttribute("PASSWORD");
					Logindao login= new Logindao();
					int roleID = login.isValidUser(UN, PW);
					if(roleID == -1)
					{
						response.sendRedirect("emplogin.html");

					}else
					{
%>
<div class="wrap">
	<div id="header">
	
		
				<p>Welcome to Mavericks, <strong>Manager:</strong> [ <a href="">logout</a> ]</p>
	
			<div id="header">
    	<div id="logo"><a href="home.html"><img src="images/logo.jpg" alt="" title="" border="0" /></a></div>
     
        
    </div>
		
		
	</div>
	

	
		<div id="content">
		<div id="sidebar">
			
			
			<div class="box">
				<div class="h_title">&#8250; Manage Profile</div>
				<ul>
		     		<li class="b1"><a class="icon page" href="viewprofileman.jsp">View profile</a></li>
					<li class="b2"><a class="icon category" href="updateprofileman.jsp">Update Profile</a></li>
				</ul>
			</div>
			<div class="box">
				<div class="h_title">&#8250; Voucher</div>
				<ul>
							<li class="b1"><a class="icon users" href="viewvouchers.jsp">View vouchers</a></li>
					</ul>
			</div>
		</div>
	<div id="main">
	
				
<%
  
   
   Employeedao dao = new Employeedao();
   Employee p =dao.selectEmployee(UN);
   if(p==null)out.println("sorry no record found..");
   else{
  
  %>
  
			
			
			
			
			<div class="full_w">
				<div class="h_title">Welcome to Admin Panel</div>
				<h1>Expense Management System</h1>
				<p></p>
  DETAILS
  <table border='0'>
   <tr><td>Employee ID :</td><td><%=p.getEid() %></td></tr>
   <tr><td>First name:</td><td><%=p.getFname() %></td></tr>
   <tr><td>Last name:</td><td><%=p.getLname() %></td></tr>
    <tr><td>Gender</td><td><%=p.getGen() %></td></tr>
   <tr><td>Date of birth</td><td><%=p.getDob() %></td></tr>
    <tr><td>Marital status</td><td><%=p.getMarital() %></td></tr>
      <tr><td>Blood group</td><td><%=p.getBgrp() %></td></tr>
       
   
   <tr><td>ADDRESS and CONTACT</td></tr>
  
   <tr><td>Phone no.:</td><td><%=p.getPhone()%></td></tr>
   <tr><td>Email ID:</td><td><%=p.getEmail() %></td></tr>
   <tr><td>Street:</td><td><%=p.getStreet() %></td></tr>
   <tr><td>City:</td><td><%=p.getCity() %></td></tr>
   <tr><td>State:</td><td><%=p.getState() %></td></tr>
   <tr><td>Postal code:</td><td><%=p.getPincode() %></td></tr>
   <tr><td>country:</td><td><%=p.getCountry() %></td></tr>
   
  </table>
  <% }}
  %>
  </div>
  </div> 	<div class="clear"></div><div id="footer">
		<div class="left">
			<p> <a href="home.html" target="_blank">Mavericks</a> | Manager Panel: <a href="#">Expense Management</a></p>
		</div>
		<a href="contact.html">Contact us </a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Copyright All rights reserved... KMIT
	</div>
	</div>
</div>
</body>
</html>