<%-- 
    Document   : deleteFoodItem
    Created on : Mar 22, 2018, 7:51:46 AM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.dao.MemberDAO"%>
<%@page import="com.edu.eventapp.dao.impl.MemberDAOImpl"%>
<%@page import="com.edu.eventapp.entity.Member"%>
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
        Member mem = new Member();
        MemberDAO memDAO = new MemberDAOImpl();
       memDAO.delete(id);
        response.sendRedirect("viewMember.jsp");
        %>
    </body>
</html>
