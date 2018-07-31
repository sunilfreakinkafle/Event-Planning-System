<%-- 
    Document   : deleteEmployee
    Created on : May 20, 2018, 6:23:06 PM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.dao.impl.EmployeeDAOImpl"%>
<%@page import="com.edu.eventapp.dao.EmployeeDAO"%>
<%@page import="com.edu.eventapp.entity.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
    int id=Integer.parseInt(request.getParameter("id"));
    
    Employee emp = new Employee();
    EmployeeDAO empDAO = new EmployeeDAOImpl();
    empDAO.delete(id);
    response.sendRedirect("viewEmployee.jsp");
    
    
    
%>
    </body>
</html>
