<%-- 
    Document   : updateEventForm
    Created on : Mar 16, 2018, 11:35:59 AM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.entity.Events"%>
<%@page import="com.edu.eventapp.dao.impl.EventDAOImpl"%>
<%@page import="com.edu.eventapp.dao.EventDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
       
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            EventDAO etDAO = new EventDAOImpl();
            Events et = etDAO.Search(id);
        %>
        
         <jsp:include page="web/nav_bar.jsp"/>
         
        <jsp:include page="web/left_nav.jsp"/>
        
        <div class="form-group" style="margin-left: 90px;">
        <form method="POST" action="updateEvent.jsp?id=<%=et.getId()%>" >
            
            
           <label>Event-Name:</label>
           <input type="text" name="eventName" value="<%=et.getEventName()%>"/><br><br>
           
           <label>Start-Time:</label>
           <input type="text" name="startTime" value="<%=et.getStartTime()%>"/><br><br>
           
           <label>End-Time:</label>
           <input type="text" name="endTime" value="<%=et.getEndTime()%>"/><br><br>
           
           <label>Event-Venue:</label>
           <input type="text" name="eventVenue" value="<%=et.getEventVenue()%>"/><br><br>
            
            <button >Update</button>
           
       </form>  
           
            </div>
           
           <br/>
           <br/>
           
   
         <jsp:include page="web/footer_nav.jsp"/>
           
    </body>
</html>
