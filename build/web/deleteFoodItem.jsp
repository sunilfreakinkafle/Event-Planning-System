<%-- 
    Document   : deleteFoodItem
    Created on : Mar 22, 2018, 7:51:46 AM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.dao.FoodItemDAO"%>
<%@page import="com.edu.eventapp.dao.impl.FoodItemDAOImpl"%>
<%@page import="com.edu.eventapp.entity.FoodItem"%>
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
        FoodItem fi = new FoodItem();
        FoodItemDAO fiDAO = new FoodItemDAOImpl();
        fiDAO.delete(id);
        response.sendRedirect("viewFoodItem.jsp");
        %>
    </body>
</html>
