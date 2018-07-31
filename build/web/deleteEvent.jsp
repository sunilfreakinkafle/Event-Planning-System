<%-- 
    Document   : deleteEvent
    Created on : Mar 16, 2018, 10:59:02 AM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.dao.impl.EventDAOImpl"%>
<%@page import="com.edu.eventapp.entity.Events"%>
<%@page import="com.edu.eventapp.dao.EventDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    int id=Integer.parseInt(request.getParameter("id"));
    
    Events et = new Events();
    EventDAO etDAO = new EventDAOImpl();
    etDAO.delete(id);
    response.sendRedirect("viewEvent.jsp");
    
    
    
%>
