<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*, com.tgmc.*, com.util.*"%>

 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Mavericks-admin</title>
<link rel="stylesheet" type="text/css" href="scrstyles/adminpanel.css" media="screen" />
<link rel="stylesheet" type="text/css" href="scrstyles/adminpanelnav.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".box .h_title").not(this).next("ul").hide("normal");
	$(".box .h_title").not(this).next("#home").show("normal");
	$(".box").children(".h_title").click( function() { $(this).next("ul").slideToggle(); });
});
function validate()
{
	
	if(f1.emp.value.length==8)
	{
	alert("employeeid should not be empty");
	f1.emp.focus();
	return false;
	}
	 
	
	}


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
			{
			%>
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
				<h1>Employee Expense Management System</h1>
				
				<h4>Update Employee Salary profile</h4>
	
 <form action="updatesal.jsp" method="post" name="f1" onsubmit="validate()">
 <table border='0' cellpadding='3'>
  <caption><font style="text-align: center;color: red; size: 15px;">Search for a Employee to modify</font></caption>
  <tr>
  <td>Employee ID :</td><td><input type='text' name='emp'/></td>
  <td><input type='submit' value='SEARCH'/></td>
  </tr>
 </table>
 
 </form>
 	 

	 
	 </div>

				
               
			</div>
			<%} %>
		
			
			
			
		
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
