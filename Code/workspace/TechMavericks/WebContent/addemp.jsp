<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*,com.tgmc.*,com.util.*"%>
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
	<%String UN=(String)session.getAttribute("USERNAME");
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
	
		
				<p>Welcome to Mavericks, <strong>Admin:</strong> [ <a href="logout.jsp"><font color="white">Logout</font></a> ]</p>
	
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
				
			<%  

			int f1=0;
			String eid = request.getParameter("id");
			String first = request.getParameter("fname");
			String last = request.getParameter("lname");
			String gender = request.getParameter("gen");
			String dd = request.getParameter("dd");
			String mm = request.getParameter("mm");
			String yyyy = request.getParameter("yyyy");
			
			String date = request.getParameter(dd+"/"+mm+"/"+yyyy);
			String marry = request.getParameter("marital");
			String bgrp = request.getParameter("bgrp");
			String email = request.getParameter("email");
			String phne = request.getParameter("phone");
			String street = request.getParameter("street");
			String cityn = request.getParameter("city");
			String pincode = request.getParameter("pin");
			String state1 = request.getParameter("state");
			String country1 = request.getParameter("country");
			  Employee p = new Employee(eid,first,last,gender,date,marry,bgrp,phne,email,street,cityn,pincode,state1,country1);
			  Employeedao pDAO = new Employeedao(); 
			  pDAO.createEmployee(p);
			   f1++;
			  %>
			  <%
  int f2=0, flag=0;
String idd = request.getParameter("id");
String dptid = request.getParameter("did");
String deptname = request.getParameter("dname");
int designation = Integer.parseInt(request.getParameter("desgn"));



Department r = new Department(idd,dptid,designation,deptname);
  Departmentdao rDAO = new Departmentdao();
  rDAO.createDepartment(r);
	  
  %>
			  
			  
			<%
  int f3=0;
 String id1 = request.getParameter("id");
 float sal = Float.parseFloat(request.getParameter("sal"));
 float sallimit = Float.parseFloat(request.getParameter("limit"));
 Salary q = new Salary(id1,sal,sallimit);
  Salarydao qDAO = new Salarydao();
  qDAO.createSalary(q);
  f3++;
  
  
  %>
  	<%
  int f4=0;
  
  	String id2 = request.getParameter("id");
 String pswrd = "abc12345";
 Users s = new Users(id2,pswrd,designation);
  Usersdao sDAO = new Usersdao();
 
  sDAO.createUsers(s);
  f4++;
  
			
  %>
			
			
			<div class="full_w">
				<div class="h_title">Welcome to Admin Panel</div>
	<h1>Employee Expense management System</h1>
<%if ((f1==1 && f2==1 && f3 ==1 )&& f4==1){%> 
<div class="n_ok"><p>Employee added Successfully </p></div>
<%
}}%>		
</div><br></br>
			<br></br>
		<br></br>
			<br></br>
			
				
			
				
			

		</div>
		<div class="clear"></div>
	

	<div id="footer">
		<div class="left">
			<p> <a href="home.html" target="_blank">Mavericks</a> | Admin Panel: <a href="#">Expense Management</a></p>
		</div>
		<a href="contact.html">Contact us </a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Copyright All rights reserved... KMIT
	</div>
</div>
</div>
</body>			
</html>
