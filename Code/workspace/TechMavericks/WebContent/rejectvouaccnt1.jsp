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
<%	String UN=(String)session.getAttribute("USERNAME");
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
	
		
				<p>Welcome to Mavericks, <strong>Admin:</strong> [ <a href="">logout</a> ]</p>
	
			<div id="header">
    	<div id="logo"><a href="home.html"><img src="images/logo.jpg" alt="" title="" border="0" /></a></div>
     
        
    </div>
		
		
	</div>
	

	<div id="content">
		<div id="sidebar">
			
			
			<div class="box">
				<div class="h_title">&#8250; Manage Profile</div>
				<ul>
				<li class="b1"><a class="icon page" href="viewprofileaccount.jsp">View profile</a></li>
					<li class="b2"><a class="icon category" href="updateprofileaccount.jsp">Update Profile</a></li>
				</ul>
			</div>
			<div class="box">
				<div class="h_title">&#8250; Voucher</div>
				<ul>
							<li class="b1"><a class="icon users" href="viewvouchersaccount.jsp">Submit voucher</a></li>
										</ul>
			</div>
		</div>
		<div id="main">
				
			<%  
		
				 int flg = 0;
				 String vid = request.getParameter("voucher");
					float exp = Float.parseFloat(request.getParameter("exp"));
					String note = request.getParameter("notes");
					String typ = request.getParameter("typ");	  
			  
				String report = request.getParameter("reject");
				  Reject p = new Reject(vid,report);
				   Rejectdao pDAO = new Rejectdao(); 
				   
				   Voucher q = new Voucher(vid, typ, exp, note, flg);
				   Voucherdao qdao = new Voucherdao();
				  qdao.updateVoucher(q);
			  
			
  
  %>
			
			
			<div class="full_w">
				<div class="h_title">Welcome to Manager Panel</div>
	<h1>Employee Expense management System</h1>
<%if(pDAO.createReject(p)){ %> 
<div class="n_ok"><p>Report sent Successfully </p></div>
<%}}%>		
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
