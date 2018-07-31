<%-- 
    Document   : updateEvent
    Created on : Mar 7, 2018, 9:58:18 PM
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
        <title></title>
        
    </head>
    <body>
        <h1>Update Event</h1>
        <% 
            
            EventDAO etDAO = new EventDAOImpl ();
             Events et = new Events();
             
             et.setEventName(request.getParameter("eventName"));
             et.setStartTime(request.getParameter("startTime"));
             et.setEndTime(request.getParameter("endTime"));
             et.setEventVenue(request.getParameter("eventVenue"));
             int id = Integer.parseInt(request.getParameter("id"));
             etDAO.update(et,id); 
             
             response.sendRedirect("viewEvent.jsp");  
            
         
         %> 
      
    </body>
</html>
