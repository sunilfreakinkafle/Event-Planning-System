<%-- 
    Document   : updateFoodItem
    Created on : Mar 22, 2018, 7:33:28 AM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.entity.Member"%>
<%@page import="com.edu.eventapp.dao.MemberDAO"%>
<%@page import="com.edu.eventapp.dao.impl.MemberDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Member </title>
    </head>
    <body>
        <%
            MemberDAO memDAO = new MemberDAOImpl();
            Member mem = new Member();
            
            mem.setId(Integer.parseInt(request.getParameter("memberid")));
            mem.setMemberName(request.getParameter("memberName"));
            mem.setMemberEmail(request.getParameter("memberEmail"));
            mem.setMemberPhno(Integer.parseInt(request.getParameter("MemberPhno")));
             int id=Integer.parseInt(request.getParameter("memberid"));
              memDAO.update(mem , id);
               response.sendRedirect("viewMember.jsp");               
        
        %>
    </body>
</html>
