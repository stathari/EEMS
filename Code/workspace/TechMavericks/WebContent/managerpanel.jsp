<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.tgmc.*,com.dao.*,com.util.*"%>
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
	
		
				<p>Welcome to Mavericks, <strong>Manager:</strong> [ <a href="logout.jsp">logout</a> ]</p>
	
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
				
			
			
			
			
			<div class="full_w">
				<div class="h_title">Welcome Manager</div>
				
				<h1>Expense Management System</h1>
				<p></p>
				
				<h3>Have a nice day</h3>
				<p>
     Enjoy the easiest way of assessing your reimbursable expenses in a far better way.
     We are very happy to welcome you to the new Employee expense management system.
     You are joining us at an exciting time of year, as we are moving into our busiest season yet keeping a moveon...<br></br>
     We are hopeful that with this new management system . the loss of valuable time gets into the account of our company's growth upto a great margin
     
               </p>
			</div>
			
		
			<%} %>
			
			
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
