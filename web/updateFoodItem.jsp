<%-- 
    Document   : updateFoodItem
    Created on : Mar 22, 2018, 7:33:28 AM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.entity.FoodItem"%>
<%@page import="com.edu.eventapp.dao.FoodItemDAO"%>
<%@page import="com.edu.eventapp.dao.impl.FoodItemDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Food Item</title>
    </head>
    <body>
        <%
            FoodItemDAO fiDAO = new FoodItemDAOImpl();
            FoodItem fi = new FoodItem();
            
            fi.setId(Integer.parseInt(request.getParameter("id")));
            fi.setFoodItem(request.getParameter("foodItem"));
            fi.setFoodQuantity(Integer.parseInt(request.getParameter("foodQuantity")));
            fi.setFoodPrice(Integer.parseInt(request.getParameter("foodPrice")));
             int id = Integer.parseInt(request.getParameter("id"));
              fiDAO.update(fi, id);
               response.sendRedirect("viewFoodItem.jsp");               
        
        %>
    </body>
</html>
