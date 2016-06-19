<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.tgmc.*,com.dao.*,com.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="pl" xml:lang="pl">
<head>


<title>voucher</title>
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
	
		
				<p>Welcome to Mavericks, <strong>Employee</strong> [ <a href="logout.html">logout</a> ]</p>
	
			<div id="header">
    	<div id="logo"><a href="home.html"><img src="images/logo.jpg" alt="" title="" border="0" /></a></div>
     
        
    </div>
		
		
	</div>
			<div id="content">
		<div id="sidebar">
			
			
			<div class="box">
				<div class="h_title">&#8250; Manage Profile</div>
				<ul>
					<li class="b1"><a class="icon page" href="viewprofile.jsp">View profile</a></li>
					<li class="b2"><a class="icon category" href="updateprofile.jsp">Update Profile</a></li>
				</ul>
			</div>
			<div class="box">
				<div class="h_title">&#8250;Voucher</div>
				<ul>
					<li class="b1"><a class="icon users" href="vouchersubmit.jsp">Submit voucher</a></li>
						<li class="b2"><a class="icon report" href="reports.jsp">View Status</a></li>
						<li class="b2"><a class="icon page" href="viewdrafts.jsp">Drafts</a></li>
				</ul>
			</div>
		</div>
		<div id="main">
				
			
			
			
			<div class="full_w">
				<div class="h_title">Welcome Employee</div>
	<h1>Employee Expense management System</h1>
				
		<%
			String vid = request.getParameter("vid");
			String typeexpense = request.getParameter("typexp");
			float expense = Float.parseFloat(request.getParameter("exp"));
			String text1 =  request.getParameter("note");
			int f1 =  1;
				  Voucher p = new Voucher(vid,typeexpense,expense,text1,f1);
				 Voucherdao pDAO = new Voucherdao(); 
				if(! pDAO.createVoucher(p)){
				
		%>
<div class="n_ok"><p>Voucher submitted Successfully </p></div><%} 
		else{ %>
		<div class="n_error"><p>Sorry.. You have already submitted your voucher, Track your voucher status by using the view status option   </p></div>	
	  
<%}}
%>
		





			</div><br></br>
			<br></br>
		<br></br>
			<br></br>
			
				
			
				
			
			</div>
		</div>
		<div class="clear"></div>
	

	<div id="footer">
		<div class="left">
			<p> <a href="home.html" target="_blank">Mavericks</a> | Employee Panel: <a href="#">Expense Management</a></p>
		</div>
		<a href="contact.html">Contact us </a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Copyright All rights reserved... KMIT
	</div>
</div>

</body>
</html>
