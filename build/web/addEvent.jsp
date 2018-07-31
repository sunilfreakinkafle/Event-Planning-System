<%-- 
    Document   : event
    Created on : Mar 5, 2018, 4:03:30 PM
    Author     : kafle
--%>




<%@page import="com.edu.eventapp.entity.Events"%>

<%@page import="com.edu.eventapp.dao.EventDAO"%>
<%@page import="com.edu.eventapp.dao.impl.EventDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD Event</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="web/application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //custom-theme -->
        <link href="web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/component.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/export.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/flipclock.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/circles.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />

        <!-- font-awesome-icons -->
        <link href="web/css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome-icons -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
   
    </head>
    <body>
      
       <jsp:include page="web/nav_bar.jsp"/>
           
        <jsp:include page="web/left_nav.jsp"/>
        
       
        <%
            if(request.getMethod().equals("POST")){
            EventDAO ed = new EventDAOImpl ();
             Events et = new Events();
             
             et.setEventName(request.getParameter("eventName"));
             et.setStartTime(request.getParameter("startTime"));
             et.setEndTime(request.getParameter("endTime"));
             et.setEventVenue(request.getParameter("eventVenue"));
             
             ed.insert(et); 
            }
        %>  
        
        
        
     
        <div style="margin-left: 90px;">
            
        <form method="POST">
            
           <label>Event-Name:</label>
           <input type="text" name="eventName"/><br><br>
           
           <label>Start-Time:</label>
            <input type="text" name="startTime"/><br><br
                
           <label>End-Time:</label>
            <input type="text" name="endTime"/><br><br>
            
           <label>Event-Venue:</label>
            <input type="text" name="eventVenue"/><br><br>
            
            <button type="submit">OK</button>
       </form> 
            
        </div>
        
        </br>
        </br>
        
        <div style="margin-left: 90px;">
        
        <a href="viewTimeSlot.jsp"> View timeSlot</a>
        </br>
        </br>
        <a href="addTimeSlot.jsp"> Add timeSlot</a>
        
        </div>
        
        
         <br/>
        <br/>
 
         <jsp:include page="web/footer_nav.jsp"/>
         
          
    </body>
</html>
