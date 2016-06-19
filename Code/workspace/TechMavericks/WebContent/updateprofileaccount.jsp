<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*,com.tgmc.*, com.util.*"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="pl" xml:lang="pl">
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


function updateemp(){
	document.form1.action='updateemp4.jsp';
	document.form1.submit();
	
}
function validate()
{
	
	
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
	var pin = f1.pin.value;
	if((f1.pin.value.length==0)||(f1.pin.value.length<5)||(f1.pin.value.length>8))
	{
		for(i=0;i<phone.length;i++)
			if(!(pin.charCodeAt(i)>=48&& pin.charCodeAt(i)<=57))
				flag=false;
				if(!flag)
					{
					alert("please enter valid pin number");
					f1.pin.focus();
					return flase;
					}
	alert("pincode should not be of more than 8 digits and it is not of less than 5 digits");
	f1.pin.focus();
	return false;
	}
	if(f1.country.value.length==8)
	{
	alert("street cant be empty");
	f1.country.focus();
	return false;
	}


	 
var email = document.getElementById("email");
	var i;
	var valid = "abcdefghijklmnopqrstuvwxyz0123456789@.-_";
	for(i=0;i<email.length;i++)
	{
		var letter= email.charAt(i).toLowerCase();
		if(valid.indexOf(letter)== -1)
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
	
		
				<p>Welcome to Mavericks, <strong>Employee:</strong> [ <a href="logout.jsp">logout</a> ]</p>
	
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
								<li class="b1"><a class="icon users" href="viewvouchersaccount.jsp">View voucher</a></li>
										</ul>
			</div>
		</div>
		<div id="main">
				
			
			
							
			
			<div class="full_w">
				<div class="h_title">Welcome to Employee Panel</div>
				<h1>Employee Expense Management System</h1>
				<p></p>
				
				<h3>Update Employee personal profile</h3>


 
	<% 
 	 String eid= request.getParameter("emp");
 if(UN!=null){
	Employeedao  dao = new Employeedao();
	Employee p =dao.selectEmployee(UN);
	 
	 %>
	 <form action="" method="post" name="f1" onsubmit="validate()">
	 <table border='0' cellspacing='0' cellpadding='2'>
	 
	  <tr>
	   <td>Employee ID :</td>
	   <td><%=p.getEid()  %></td>
	  </tr>
	  <tr>
	   <td>First Name :</td>
	   <td><input type='text' name='fname' value='<%=p.getFname()  %>'/></td>
	  </tr>
	  <tr>
	   <td>Last Name : </td>
	   <td><input type='text' name='lname' value='<%=p.getLname()  %>'/></td>
	  </tr>
	  <tr>
	   <td>Gender : </td>
	   <td><input type="radio" name="gen" value="male"/> 	&nbsp;&nbsp;Male	&nbsp;&nbsp;	&nbsp;&nbsp;	&nbsp;&nbsp;<input type="radio" name="gen" value="female"/>	&nbsp;&nbsp;Female</td>
	  </tr>
	  
	  <tr>
	   <td>Date of Birth : </td>
	   <td><input type='text' name='dob' value='<%=p.getDob() %>' readonly/></td>
	  </tr>
	  
	  <tr>
	   <td>Marital Status : </td>
	   <td><select name="marital" >
							<option value=" ">select </option>
							<option value="yes">Yes</option>
							<option value="no">No</option>
						
						</select></td>
	  </tr>
	  <tr>
	   <td>Blood Group : </td>
	   <td><select name="bgrp" >
							<option value=" ">select </option>
							<option value="a+">A+ </option>
							<option value="a-">A- </option>
							<option value="b+">B+ </option>
							<option value="b- ">B- </option>
							<option value="o+">O+</option>
							<option value="o-">O-</option>
						<option value="ab+ ">AB+ </option>
						<option value="ab- ">AB- </option>
						</select></td>
	  </tr>
	  <tr>
	   <td>E - mail:</td>
	   <td><input type='text' name='email' value='<%=p.getEmail()  %>'/></td>
	  </tr>
	  <tr>
	   <td>Contact number: </td>
	   <td><input type='text' name='phone' value='<%=p.getPhone()  %>'/></td>
	  </tr>
	  <tr>
	   <td>Street: </td>
	   <td><input type='text' name='street' value='<%=p.getStreet()  %>'/></td>
	  </tr>
	  <tr>
	   <td>City:</td>
	   <td><input type='text' name='city' value='<%=p.getCity()  %>'/></td>
	  </tr>
	  <tr>
	   <td>Postal code : </td>
	   <td><input type='text' name='pin' value='<%=p.getPincode()  %>'/></td>
	  </tr>
	  <tr>
	   <td>State:</td>
	   <td><input type='text' name='state' value='<%=p.getState()  %>'/></td>
	  </tr>
	  <tr>
	   <td>Country: </td>
	   <td><input type='text' name='country' value='<%=p.getCountry()  %>'/></td>
	  </tr>
	  <tr>
	   <td> <input type='submit' value='update' onclick='updateemp()'/></td>
	   
	  </tr>
	 
	 </table>
	 </form>
	 </div>
	 <%
 }}
 %>	
				
               
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
