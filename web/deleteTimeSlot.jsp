<%-- 
    Document   : deleteFoodItem
    Created on : Mar 22, 2018, 7:51:46 AM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.dao.TimeSlotDAO"%>
<%@page import="com.edu.eventapp.dao.impl.TimeSlotDAOImpl"%>
<%@page import="com.edu.eventapp.entity.TimeSlot"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Food Item</title>
    </head>
    <body>
        <%
        int id = Integer.parseInt(request.getParameter("id"));
        TimeSlot tim = new TimeSlot();
        TimeSlotDAO timsDAO = new TimeSlotDAOImpl();
       timsDAO.delete(id);
        response.sendRedirect("viewTimeSlot.jsp");
        %>
    </body>
</html>
