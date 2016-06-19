<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*,com.tgmc.*, com.util.*"%>

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
	document.form1.action='voucher.jsp';
	document.form1.submit();
	
}
function savevou(){
	document.form1.action='savevoucher.jsp';
	document.form1.submit();
	
}

function valide()
{
	if((isNaN(exp.value))||exp.value.length==0)
{
	alert("enter a number");
	f1.exp.focus();
	}
	if(f1.typeexp.value.length==0)
	{
	alert("gender must be choosen");
	f1.typeexp.focus();
	}
	if(f1.note.value.length==0)
	{
	alert("gender must be choosen");
	f1.note.focus();
	}
	
	}

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
	
		
				<p>Welcome to Mavericks, <strong>Employee:</strong> [ <a href="logout.html">logout</a> ]</p>
	
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
	
				

	<form action="" method="post" name="f1" onsubmit="validate()">
				<table>
		<tr><td>Voucher ID</td> <td><input type="text" name="vid" value="<%=UN %>" readonly/>(same as Employee id)	</td></tr>		
	 
	 <tr><td>		Expense</td>	 <td><input type="text" name="exp"/>(in INR)
</td></tr>

<tr><td>Type of expense</td>	<td><select name="typexp" class="err">
							<option value=" ">select </option>
							<option value="travel">Traveling expense</option>
							<option value="health">Health</option>
							<option value="accomodation">Accommodation</option>
							<option value="insurance">Insurance</option>
								<option value="food">Food Expenses</option>
						</select></td></tr>
<tr><td>
Short notes:</td><td> <textarea name="note" rows="5" cols="70"></textarea>
</td></tr>
<tr><td>
	    <input type='submit' value='Submit'  onclick ="updatevou()"/>
	  </td>
	 <td> 
	   <input type="submit" value='Save as Draft' onclick="savevou()"/>
	 </td>
	  </tr></table>

</form>

<%} %>



			</div><br></br>
			<br></br>
		<br></br>
			<br></br>
			
				
			
				
			
			</div>
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

</body>
</html>
