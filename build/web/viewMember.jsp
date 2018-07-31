<%-- 
    Document   : viewEmployee
    Created on : May 20, 2018, 6:10:46 PM
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
        <title>JSP Page</title>
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
        
        <div  style="margin-left: 50px;">
        
        <h1>Show All Members</h1>
      
        <table   border= "1" class="table table-bordered table-hover table_striped" >
            <tr>
                <th>Member ID:</th>
                <th>Member Name:</th>
                <th>Member Email</th>
                <th>Member Phno:</th>
               
                <th>Action</th>
            </tr>
          
            
            <%
                MemberDAO empDAO = new MemberDAOImpl();
                for(Member memb : empDAO.getAll()){
                 %>
                  <tr>
                      <td><%=memb.getId()%></td>
                       <td><%=memb.getMemberName()%></td>
                       <td><%=memb.getMemberEmail()%></td>
                       <td><%=memb.getMemberPhno()%></td>
                       
                       <td><a href="deleteMember.jsp?id=<%=memb.getId()%>" >Delete</a>
                           <a href="updateMemberForm.jsp?id=<%=memb.getId()%>" >Update</a></td>
                   </tr> 
           
                 <%   
                }
            %>
        </table>
         </div>
        
        <br>
           <br>
    
         <jsp:include page="web/footer_nav.jsp"/>
    </body>
</html>
