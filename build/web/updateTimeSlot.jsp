<%-- 
    Document   : updateEvent
    Created on : Mar 7, 2018, 9:58:18 PM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.entity.TimeSlot"%>
<%@page import="com.edu.eventapp.dao.impl.TimeSlotDAOImpl"%>
<%@page import="com.edu.eventapp.dao.TimeSlotDAO"%>
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
            
            TimeSlotDAO etDAO = new TimeSlotDAOImpl ();
            TimeSlot ts = new TimeSlot();
             
             ts.setStartTime(request.getParameter("starttime"));
             ts.setEndTime(request.getParameter("endtime"));
             ts.setEventActivity(request.getParameter("endactivity"));
             int id = Integer.parseInt(request.getParameter("id"));
             etDAO.update(ts,id); 
             
             response.sendRedirect("viewTimeSlot.jsp");  
            
         
         %> 
      
    </body>
</html>
