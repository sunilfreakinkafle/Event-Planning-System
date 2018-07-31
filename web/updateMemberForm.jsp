<%-- 
    Document   : updateFoodItemForm
    Created on : Mar 22, 2018, 7:35:00 AM
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
        <title>Update Member Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="web/application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //custom-theme -->
        <link href="web/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/component.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/export.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/flipclock.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/circles.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/style_grid.css" rel="stylesheet" type="text/css" media="all" />
        <link href="web/css/style.css" rel="stylesheet" type="text/css" media="all" />

        <!-- font-awesome-icons -->
        <link href="web/css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome-icons -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
   
    </head>
    <body>
        
        <jsp:include page="web/nav_bar.jsp"/>
         
        <jsp:include page="web/left_nav.jsp"/>
        
        <%
        int id = Integer.parseInt(request.getParameter("id"));
        MemberDAO memDAO = new MemberDAOImpl();
        Member mem = memDAO.Search(id);
         
        %>
        <form method="POST" action="updateMember.jsp?id=<%=mem.getId()%>" >
             <div class="form-group">
          
           <input type="hidden" name="memberid" value="<%=mem.getId()%>"/><br><br>
           
           <label>Member Name:</label>
           <input type="text" name="memberName" value="<%=mem.getMemberName()%>"/><br><br>
           
           <label>Member Email:</label>
           <input type="text" name="memberEmail" value="<%=mem.getMemberEmail()%>"/><br><br>
           
           <label>Member Phno:</label>
           <input type="text" name="memberPhno" value="<%=mem.getMemberPhno()%>"/><br><br>
          
            <button >Update</button>
            </div>
       </form> 
           
           <br/>
           <br/>
           
     
         <jsp:include page="web/footer_nav.jsp"/>
           
           
    </body>
</html>
