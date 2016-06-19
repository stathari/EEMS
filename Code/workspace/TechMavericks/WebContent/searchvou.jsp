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


function updatevou(){
	document.form1.action='updatevou.jsp';
	document.form1.submit();
	
}
function rejectvou(){
	document.form1.action='rejectvouman.jsp';
	document.form1.submit();
	
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
{ %>
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

   String pid = request.getParameter("Vid");
  Voucherdao dao = new Voucherdao();
  Voucher p =dao.selectVoucher(pid);
  String qid = request.getParameter("Vid");
  Salarydao qdao = new Salarydao();
  Salary q =qdao.selectSalary(qid);
   if(p==null)out.println("sorry no record found..");
   else{
  
  %>
  
			
			
			
			
			<div class="full_w">
				<div class="h_title">Welcome to Admin Panel</div>
				<h1>Expense Management System</h1>
				<p></p>
  DETAILS
  <form action="" name="form1">
  <table border='1'>
   <tr><td>Voucher ID :</td><td><input type="text" name ="voucher" value="<%=p.getVid() %>" readyonly/></td></tr>
   <tr><td>Expense Type:</td><td><input type="text" name ="type" value="<%=p.getType() %>" readyonly/></td></tr>
   <tr><td>Expense:</td><td><input type="text" name ="exp" value="<%=p.getExp() %>" readyonly/></td></tr>
    <tr><td>Salary:</td><td><input type="text" name ="sal" value="<%=q.getSal() %>" readyonly/></td></tr>
   <tr><td>Voucher Expsense limit</td><td><input type="text" name ="limit" value="<%=q.getLimit()%>" readyonly/></td></tr>
    <tr><td>Description</td><td><input type="text" name ="note" value="<%=p.getText() %>" readyonly/></td></tr>
 
  <tr><td>
	    <input type='submit' value='Approve'  onclick ="updatevou()"/>
	  </td>
	 <td> 
	   <input type="submit" value='Reject' onclick="rejectvou()"/>
	 </td>
	  </tr>
   
   
  </table>
  </form>
  <% }}
  %>
 </div>
  </div> 	<div class="clear"></div><div id="footer">
		<div class="left">
			<p> <a href="home.html" target="_blank">Mavericks</a> | Manager Panel: <a href="#">Expense Management</a></p>
		</div>
		<a href="contact.html">Contact us </a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Copyright All rights reserved... KMIT
	</div></div>
	
</div>
</body>
</html>