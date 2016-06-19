<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*, com.tgmc.*, com.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="pl" xml:lang="pl">
<head>
<script language="JavaScript"  type="text/javascript">
		var url ="http://localhost:8080/Tgmcfinal/checkEmpId?param="; 
		// The server-side script
	  var col_array;
		function handleHttpResponse() {
			  if (http.readyState == 4) 
			  {
				   // Split the comma delimited response into an array
					var results = http.responseText;
					if(results=="true")
					{
						
				 	document.getElementById("empidvalid").innerHTML ="Employee ID Already Exists";
					}
					else
					{
						document.getElementById("empidvalid").innerHTML ="Employee ID Available";	
				 	}

			}
	}
function getDetails() {
	    
		var eid = document.getElementById("empid").value;
		
		http.open("GET",  url+escape(eid) ,  true);
		http.onreadystatechange = handleHttpResponse;
	    http.send(null);  
}
function getHTTPObject() {
	var xmlhttp;
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlhttp=new XMLHttpRequest();
	}
	else
	{// code for IE6, IE5
	xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
 return xmlhttp;
	 
}
var http = getHTTPObject(); 
</script>

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

function validate()
{
	var myInnerHtml = document.getElementById("empidvalid").innerHTML;
	if(myInnerHtml == "Employee ID Already Exists")
		{
		alert("employeeid is not valid it is already in use choose any other id");
				}
	if(f1.id.value.length==8)
	{
	alert("employeeid should not be empty");
	f1.id.focus();
	return false;
	}
	if((f1.fname.value.length==0)||(f1.fname.value.length>30))
		{
		alert("firstname must be less than 30 characters");
		f1.fname.focus();
		}
	if((f1.lname.value.length==0)||(f1.lname.value.length>30))
	{
	alert("firstname must be less than 30 characters");
	f1.lname.focus();
	}
	var i;
	flag=false;
	for(i=0;f1.gen.length;i++)
		if(f1.gen[i].checked)
			flag=true;
	if(!(flag))
		{
		alert("please choose a gender");
		return false;
		}
	if((f1.dd.value.length==0)||(f1.dd.value.length<=0)||(f1.dd.value.length>31))
	{
	alert("date is in not correct format");
	f1.dd.focus();
	}
	if((f1.mm.value.length==0)||(f1.dd.value.length<=0)||(f1.dd.value.length>12))
		{
		alert("month is in not correct format");
		f1.mm.focus();
		}
	if((f1.yyyy.value.length==0)||(f1.yyyy.value.length<=1980)||(f1.yyyy.value.length>1993))
		{
			alert("year is in not correct format");
			f1.yyyy.focus();
			}
	if(f1.marital.value.length==0)
	{
	alert("gender must be choosen");
	f1.marital.focus();
	}
	if(f1.bgrp.value.length==0)
		{
		alert("gender must be choosen");
		f1.bgrp.focus();
		}
	flag=true;
	if(f1.phone.value.length!=10)
		flag=false;
	var phone = f1.phone.value;
	var i;
	for(i=0;i<phone.length;i++)
		if(!(phone.charCodeAt(i)>=48&& phone.charCodeAt(i)<=57))
			flag=false;
			if(!flag)
				{
				alert("please enter valid phone number");
				f1.phone.focus();
				return flase;
				}
	if(f1.street.value.length==0)
	{
	alert("street cant be empty");
	f1.street.focus();
	return false;
	}
	if(f1.city.value.length==0)
	{
	alert("city cant be empty");
	f1.city.focus();
	return false;
	}
	if(f1.pin.value.length==0)
	{
	alert("pincode cant beempty");
	f1.pin.focus();
	return false;
	}
	if(f1.country.value.length==8)
	{
	alert("street cant be empty");
	f1.country.focus();
	return false;
	}
	if(f1.did.value.length==0)
	{
	alert("department id cant be empty");
	f1.did.focus();
	return false;
	}
	if(f1.dname.value.length==0)
	{
	alert("department name cant be empty");
	f1.county.focus();
	return false;
	}
	if(f1.desgn.value.length==0)
	{
	alert("street cant be empty");
	f1.desgn.focus();
	return false;
	}
	var sal= document.getElementById("sal");
	var salexp = document.getElementById("limit");

	if((isNaN(sal.value) )||sal.value.length==0)
		{
		alert("enter a number")l;
		f1.sal.focus();
		}
	if((isNaN(salexp.value))||salexp.value.length==0)
		{
		alert("enter a number");
		f1.salexp.focus();
		}
	 
var email = document.getElementById("email");
	var i;
	var valid = "abcdefghijklmnopqrstuvwxyz0123456789@.-_";
	for(i=0;i<email.length;i++)
	{
		var letter= email.charAt(i).toLowerCase();
		if(valid.indexOf(letter)==-1)
		{
			return false;
			f1.email.focus();
		}
		
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
				
			
		
			
			
			<div class="full_w">
				<div class="h_title">Welcome to Admin Panel</div>
				<h1>Employee Registration form</h1>
			
				
				
					
					<form name="f1" action="addemp.jsp" method="post" onsubmit="validate()">
					<h4>Primary Information</h4>	
				<table>		
 <tr><td> Employeeid </td><td><input type="text" name="id" id="empid" onblur="getDetails()"/></td><td><span id='empidvalid'></span></td></tr>
 <tr><td> First name</td><td><input type="text" name="fname"/></td>
 <td>Last name</td><td> <input type="text" name="lname"/></td> </tr>
<tr><td> gender</td><td><input type="radio" name="gen" value="male"/> 	&nbsp;&nbsp;Male	&nbsp;&nbsp;	&nbsp;&nbsp;	&nbsp;&nbsp;<input type="radio" name="gen" value="female"/>	&nbsp;&nbsp;Female</td></tr>
<tr><td>dob</td><td>dd: <input name="dd" type="text"/>mm:<input name="dd" type="text"/>yyyy<input name="yyyy" type="text"/>
	</td></tr>
<tr><td>marital</td><td>	<select name="marital" >
							<option value=" ">select </option>
							<option value="yes">Yes</option>
							<option value="no">No</option>
						
						</select></td></tr>
<tr><td>bgroup</td><td><select name="bgrp" >
							<option value=" ">select </option>
							<option value="a+">A+ </option>
							<option value="a-">A- </option>
							<option value="b+">B+ </option>
							<option value="b- ">B- </option>
							<option value="o+">O+</option>
							<option value="o-">O-</option>
						<option value="ab+ ">AB+ </option>
						<option value="ab- ">AB- </option>
						</select></td></tr>
<tr><td>phno</td><td><input type="text" name="phone"/>(ten digit)</td></tr>
<tr><td>Email ID</td><td> <input type="text" name = "email" /></td></tr>
<tr><td>hno / Street no</td><td><input type="text" name="street"/></td>
<td>city</td><td><input type="text" name="city"/></td></tr>
<tr><td>pincode</td><td><input type="text" name="pin"/></td>
<td>state</td><td><input type="text" name="state"/></td></tr>
<tr><td>country</td><td><input type="text" name="country"/></td></tr>
</table>
<h4>Department Information</h4>
<table>
<tr><td>Department ID </td><td>	<select name="did">
  							<option value=" ">select </option>
							<option value="mrkt">Marketing </option>
							<option value="accnts">Accounts</option>
							<option value="admin">Administration(Project)</option>
							<option value="dpt4">DPT4 (administration))</option>
						
						</select></td></tr>
 <tr><td> Department name</td><td>	<select name="dname">
							<option value=" ">select </option>
							<option value="marketing">Marketing</option>
							<option value="accounts">Accounts</option>
							<option value="administration">Administration</option>
						
						</select></td></tr>
  <tr><td>Designation</td><td><select name="desgn" >
							<option value=" ">select </option>
							<option value="1">team member </option>
						<option value="2">Project Manager </option>
						<option value="3">Accounts Manager</option>
							
						</select></td></tr>
</table>
<h4>Salary Information</h4>
<table><tr><td>Salary	</td><td><input type="text" name="sal"/></td></tr>
  		<tr><td>					
Expense limit	</td><td><input type="text" name="limit"/></td></tr>
</table>

<div class="entry">
						<center><button type="submit" class="add" >Add Employee</button> <button type="reset" >Reset</button>
					</center></div>
</form>

               	
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
