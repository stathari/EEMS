<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.tgmc.*, com.dao.*, com.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
<title>mavericks-contactus</title>
<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
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
               <li><a  class="current" href="contact.html" title="">contact us</a></li>
            </ul>
        </div>
        
    </div>
    
    <div class="green_box">
    	<div class="clock">
        <img src="images/clock.png" alt="" title="" />             
        </div>
        <div class="text_content">
        <h1>Expense Management - Contact us</h1>
        <p class="green">
       "Come join Us<br>
		
Contact Maverick Expense Management System today and let us show you how we can streamline your
expense management, drive growth, and enhances profits.</br>
Follow Expense management and keep in sync with of-the-moment conversations about trends and innovation in this corporate World.
 
        </p>
        <div class="read_more"><a href="about.html">read more</a></div>
        </div>
        
        <div id="right_nav">
            <ul>                                        
               <li><a href="about.html">What is Expense management</a></li>
                <li><a href="files/ems.pdf" >Expense Management brochure</a></li>
               
                <li><a href="emplogin.html">Get onto your acount</a></li>
                
            </ul>
        </div>         
        
    
    </div><!--end of green box-->
    
    <div id="main_content">
    	<div id="left_content">
        <h2>Features</h2> 
        <div class="news">
        	<div class="news_icon"><img src="images/testimonials_icon.gif" alt="" title="" /></div>   
            <div class="news_content">    
<span>"24/7 Availability.</span><br />
Every day, customers like you thrive with the help of a trained support team that delivers specialized and personalized support from proactive and accountable Xperts. 
			</div>
        </div>  
        <div class="read_more_link"><a href="#">read more</a></div>     
        
 
 
         <div class="news">
        	<div class="news_icon"><img src="images/testimonials_icon.gif" alt="" title="" /></div>   
            <div class="news_content">    
<span>"Reliable System.</span><br />
You can rely on our Support to help make the most of your solutions—no matter how challenging or rapidly changing your business environment now with 24 hours availability 
			</div>
        </div>  
        <div class="read_more_link"><a href="#">read more</a></div>
 
 
        <div class="news">
        	<div class="news_icon"><img src="images/testimonials_icon.gif" alt="" title="" /></div>   
            <div class="news_content">    
<span>"Finance year Report</span><br />
This financial year, it was great for Expense management with a good growth in our organization. we thank you all for your everending support<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -CEO			</div>
        </div>  
        <div class="read_more_link"><a href="#">read more</a></div> 
 
 

        
        </div><!--end of left content-->



    	<div id="right_content">
        <h2>Contact Information</h2>
        	<div class="contact_info_box">
				<div class="contact_info_title">Dolore magna aliqua</div>
            <div class="contact_info">
            <img src="images/phone_icon.gif" width="30px" alt="" title="" class="box_img" />
			+91-9650-65416139<br />
            9652999153
            </div>
            
             <div class="contact_info">
            <img src="images/contact_icon.gif" width="20px"alt="" title="" class="box_img" />
            info@mvrks.com<br/>
            contact@mvrks.com
            </div> 
            
            <div class="adress">
            Narayanaguda, Hyderabad-500035 , AndhraPradesh, India
            </div>

            </div>
            
            
 
  <h2>Any Queries</h2>
                 <div id="contact_form">
                     <%  
                   
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String question = request.getParameter("question");
			 Query p = new Query(name, email, phone, question);
			 Querydao pDAO = new Querydao(); 
			 pDAO.createQuery(p);
			%>
		 Your Query has been submitted successfully<br>
		 </br>
		 We will contact you as soon as possible
		
          
                </div>
 
 
 
            
        
        </div><!--end of right content-->


    
    <div style=" clear:both;"></div>
    </div><!--end of main content-->
 

     <div id="footer">
     	<div class="copyright">
<a href="home.html"><img src="images/footer_logo.jpg" alt="" title="" border="0"></a>
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
