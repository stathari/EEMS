<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*, com.tgmc.*, com.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="pl" xml:lang="pl">
<head>

<title>mavericks-admin</title>
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
<%	 String UN=(String)session.getAttribute("USERNAME");
String PW=(String)session.getAttribute("PASSWORD");

Logindao login= new Logindao();
int roleID = login.isValidUser(UN, PW);
if(roleID == -1)
{
	response.sendRedirect("emplogin.html");


}else
{ %>
<div class="wrap">
	<div id="header">
	
		
				<p>Welcome to Mavericks, <strong>Admin:</strong> [ <a href="logout.jsp">logout</a> ]</p>
	
			<div id="header">
    	<div id="logo"><a href="#"><img src="images/logo.jpg" alt="" title="" border="0" /></a></div>
     
        
    </div>
		
		
	</div>

	<div id="content">
		<div id="sidebar">
			<div class="box">
				<div class="h_title">&#8250;Site control</div>
				<ul id="home">
					<li class="b2"><a class="icon report" href="viewqueries.jsp">View queries</a></li>
						
				</ul>
			</div>
			
			<div class="box">
				<div class="h_title">&#8250; Manage Employee</div>
				<ul>
					<li class="b1"><a class="icon add_page" href="addemployee.jsp">Add Employee</a></li>
					<li class="b1"><a class="icon users" href="viewall.jsp">View Employees</a></li>
				
				</ul>
			</div>
			<div class="box">
				<div class="h_title">&#8250; Modify Employee</div>
				<ul>
				
						<li class="b2"><a class="icon category" href="updateempinfo1.jsp">Personal Information</a></li>

					<li class="b2"><a class="icon category" href="updatedept0.jsp">Department Information</a></li>
					<li class="b2"><a class="icon category" href="updatesal0.jsp">Salary Information</a></li>

					
				</ul>
			</div>
		</div>
		<div id="main">
				
			
			
			
			
			<div class="full_w">
				<div class="h_title">Welcome to Admin Panel</div>
				<h1>Expense Management System</h1>
		<%
	

		String eid = request.getParameter("emp");
		String id = request.getParameter("did");
		int designation = Integer.parseInt(request.getParameter("desgn"));
		String name = request.getParameter("dname");
	
		Department p = new Department(id,eid,designation,name);
		  Departmentdao pDAO = new Departmentdao(); 
		  
if(pDAO.updateDepartment(p)){

	%>
	 <div class="n_ok"><p>Employee department information updated Successfully </p></div>
	<%  }

else{%>
	  <div class="n_error"><p>Employee department information updation not succesful  </p></div>	
	  
<%}}
%>
				
				
				
				
				
				
				
				
				
				
               
			</div>
			
		
			
			
			
		</div>
		<div class="clear"></div>
	</div>

	<div id="footer">
		<div class="left">
			<p> <a href="home.html" target="_blank">Mavericks</a> | Admin Panel: <a href="#">Expense Management</a></p>
		</div>
		<a href="contact.html">Contact us </a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Copyright All rights reserved... KMIT
	</div>
</div>

</body>
</html>