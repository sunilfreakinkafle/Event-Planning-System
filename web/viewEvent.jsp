<%-- 
    Document   : viewEvent
    Created on : Mar 7, 2018, 4:28:37 PM
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
        <title></title>
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
        
        
        <h1>Show All Event</h1>
        
        
        <div style="margin-left: 50px">
        <table   border= "1" class="table table-bordered table-hover table_striped" >
            <tr>
                <th>Event ID:</th>
                <th>Event Name:</th>
                <th>Start Time:</th>
                <th>End Time:</th>
                <th>Event Venue:</th>
                <th>Action</th>
            </tr>
            
            <%
                EventDAO etDAO= new EventDAOImpl();
                for(Events et:etDAO.getAll()){
                   %> 
                   <tr>
                       <td><%=et.getId()%></td>
                       <td><%=et.getEventName()%></td>
                       <td><%=et.getStartTime()%></td>
                       <td><%=et.getEndTime()%></td>
                       <td><%=et.getEventVenue()%></td>
                       <td><a href="deleteEvent.jsp?id=<%=et.getId()%>" >Delete</a>
                           <a href="updateEventForm.jsp?id=<%=et.getId()%>" >Update</a></td>
                   </tr>  
              <%   
                }
            %>
                   
           
        </table>
        </div>
            
           
        <br/>
        
        
        
        
        <div style="margin-left:200px"> 
        
        <input type="button" value="Add Member" onclick="window.location.href='addMember.jsp';return false;">
        
        <input type="button" value="Send Invitation" onclick="window.location.href='emailClient.jsp';return false;">
         
        <input type="button" value="Add Food Items" onclick="window.location.href='addFoodItem.jsp';return false;">
          
        <input type="button" value="Add Decoration Items" onclick="window.location.href='addDecorItem.jsp';return false;">
        
        <input type="button" value="View timeSlot" onclick="window.location.href='viewTimeSlot.jsp';return false;">
        
        <input type="button" value="Add timeSlot" onclick="window.location.href='addTimeSlot.jsp';return false;">
        
        <input type="button" value="Cancel Invitation" onclick="window.location.href='emailClient.jsp';return false;">
        
       
        </div>
        
        
        
        
        
        
        <br/>
        <br/>
        <br/>
        
        
         <jsp:include page="web/footer_nav.jsp"/>
         
    </body>
</html>

