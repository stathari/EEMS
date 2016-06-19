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
function validate(){
	
	if((f1.reject.value.length==0)||(f1.reject.value.length<300))
	{
	alert("gender must be choosen");
	f1.reject.focus();
	}	
	
}
</script>
</head>
<body><%	 String UN=(String)session.getAttribute("USERNAME");
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
				<div class="h_title">Welcome Employee</div>
	<h1>Employee Expense management System</h1>
				<%
			
			   String vouid = request.getParameter("voucher");
		     Voucherdao dao = new Voucherdao();
			Voucher p =  dao.selectVoucher(vouid);	
			   if(p==null)out.println("Sorry reports are not uploaded yet.");
			   else{
			  
			  %>
				
			  DETAILS
			  
			  <form action="rejectman.jsp" method="post" name="f1" onsubmit="validate()">
			  
			  <table border='0'>
			   <tr><td>Voucher_ID :</td><td><input type="text" name ="voucher" value="<%=p.getVid() %>" readyonly/></td></tr>
			   <tr><td>Voucher Report:</td><td><input type="text" name ="notes" value="<%=p.getText() %>" readyonly/></td></tr>
			  
			  <tr><td>Voucher expense</td><td><input type="text" name ="exp" value="<%=p.getExp() %>" readyonly/></td></tr>
			   <tr><td>Type of expense</td><td><input type="text" name ="typ" value="<%=p.getType() %>" readyonly/></td></tr>
			  
			  <tr><td>report: </td><td> <textarea name="reject" rows="5" cols="70"></textarea></tr>
			  <tr><td><input type="submit" value="Submit Report"/></td></tr>
			  </table>
			  
			</form>
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
			<p> <a href="home.html" target="_blank">Mavericks</a> | Manager Panel: <a href="#">Expense Management</a></p>
		</div>
		<a href="contact.html">Contact us </a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Copyright All rights reserved... KMIT
	</div>
</div>

</body>
</html>
