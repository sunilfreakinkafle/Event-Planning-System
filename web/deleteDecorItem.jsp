<%-- 
    Document   : deleteDecorItem
    Created on : May 20, 2018, 3:58:52 PM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.dao.impl.DecorItemDAOImpl"%>
<%@page import="com.edu.eventapp.dao.DecorItemDAO"%>
<%@page import="com.edu.eventapp.entity.DecorItem"%>
<%@page import="com.edu.eventapp.entity.DecorItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <%
        int id = Integer.parseInt(request.getParameter("id"));

        DecorItem di = new DecorItem();
        DecorItemDAO diDAO = new DecorItemDAOImpl();
        diDAO.delete(id);
        response.sendRedirect("viewDecorItem.jsp");


    %>
