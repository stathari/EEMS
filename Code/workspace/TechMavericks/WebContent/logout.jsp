<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>mavericks-contactus</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
<%HttpSession ses = request.getSession(false);
    if(ses != null)
    	ses.invalidate();
    	request.getRequestDispatcher("/logout.jsp").forward(request,response); 
    	%>
</head>

<body>
<div id="main_container">
	<div id="header">
    	<div id="logo"><a href="home.html"><img src="images/logo.jpg" alt="" title="" border="0" /></a></div>
        
         <div id="menu">
            <ul>                                        
                <li><a  href="home.html" title="">home</a></li>
               <li><a href="services.html" title="">services</a></li>
             <li><a href="about.html" title="">About Us</a></li>
                <li><a href="news.html" title="">News</a></li>
				<li><a href="faq.html" title="">F.A.Q's</a></li>
               <li><a  href="contact.html" title="">contact us</a></li>
            </ul>
        </div>
        
    </div>
    
    <div class="green_box">
    	<div class="clock">
        <img src="images/clock.png" alt="" title="" />             
        </div>
        <div class="text_content">
        <h1>Expense Management - Contact us</h1>
        <p class="green"></p>
      <br></br> <br></br>
		 <br></br>
		 <br></br>
		
		
<h3>Logged out successfully</h3>
    
    </div><!--end of green box-->
    
  </div>
  
        
       <br></br> <br></br> <br></br> <br></br> <br></br> <br></br> <br></br> <br></br> <br></br> <br></br> <br></br> <br></br>
        
 
 
        
      
 
 

        
    



    
            
            
 
               
 
 
 
            
        
     

     <div id="footer">
     	<div class="copyright">
<a href="home.html"><img src="images/footer_logo.jpg" alt="" title="" border="0"/></a>
        </div>
    	<div class="footer_links"> 
        <a href="about.html">About us</a>
                <a href="contact.html">Contact us </a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Copyright All rights reserved... KMIT
        

        </div>
    
    
    </div>  
 
   

</div> <!--end of main container-->

</body>
</html>
