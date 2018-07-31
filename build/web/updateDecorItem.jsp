<%-- 
    Document   : updateDecorItem
    Created on : May 20, 2018, 3:52:12 PM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.dao.impl.DecorItemDAOImpl"%>
<%@page import="com.edu.eventapp.dao.DecorItemDAO"%>
<%@page import="com.edu.eventapp.entity.DecorItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body>
        <h1>Update Decor Item</h1>
        <% 
            
            DecorItemDAO diDAO = new DecorItemDAOImpl ();
             DecorItem di = new DecorItem();
             
             di.setDecorItem(request.getParameter("decorItem"));
             di.setDecorQuantity(Integer.parseInt(request.getParameter("decorQuantity")));
             di.setDecorPrice(Integer.parseInt(request.getParameter("decorPrice")));
             int id = Integer.parseInt(request.getParameter("id"));
             
             diDAO.update(di, id);
              response.sendRedirect("viewDecorItem.jsp");
            
         
         %> 
    </body>
</html>
