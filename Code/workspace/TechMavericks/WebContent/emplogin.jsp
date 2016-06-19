<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*,com.tgmc.*, com.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="pl" xml:lang="pl">
<head>

<title>Mavericks: Employee</title>
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
<script>
function redirect(){
	var x=confirm("password n username miss match, try again");
	if(x==true)
		  {
			document.form1.action='emplogin.html';
			document.form1.submit();
		  }
		else
		  {
			document.form1.action='home.html';
			document.form1.submit();
		  
		  }
	}
</script>
</head>
<body>

	
		



<%

String u_name=request.getParameter("username");
String p_word=request.getParameter("password");

session.setAttribute("USERNAME",u_name);
session.setAttribute("PASSWORD",p_word);
String un =(String)session.getAttribute("USERNAME");
String pw =(String)session.getAttribute("PASSWORD");
Logindao login= new Logindao();
int roleID = login.isValidUser(un, pw);

if(roleID==1) {
%>
<jsp:include page="employeepanel.jsp" />
<% }
else if (roleID==2) {
%>
<jsp:include page="managerpanel.jsp" />

<%} else if (roleID==3) {
	%>
	<jsp:include page="accountspanel.jsp" />


	<%}else if(roleID==0) {
	%>	<jsp:include page ="adminpanel.jsp"/>
	<%
	}
else if (roleID==-1){%>
	
<jsp:forward page="check.jsp"/>
		

<%}
%>
		





<div>

		
	

	
			
				
			
			
</div>
</body>
</html>
