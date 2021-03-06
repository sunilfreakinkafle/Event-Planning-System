<%-- 
    Document   : updateDecorItemForm
    Created on : May 20, 2018, 3:47:09 PM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.dao.impl.DecorItemDAOImpl"%>
<%@page import="com.edu.eventapp.entity.DecorItem"%>
<%@page import="com.edu.eventapp.dao.DecorItemDAO"%>
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
        
        
        
        
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            DecorItemDAO diDAO = new DecorItemDAOImpl();
            DecorItem di = diDAO.Search(id);
        %>
        
         <jsp:include page="web/nav_bar.jsp"/>
         
        <jsp:include page="web/left_nav.jsp"/>
        
        <div class="form-group" style="margin-left: 90px;">
        <form method="POST" action="updateDecorItem.jsp?id=<%=di.getId()%>" >
            
            
           <label>Decor-Item:</label>
           <input type="text" name="decorItem" value="<%=di.getDecorItem()%>"/><br><br>
           
           <label>Decor-Quantity</label>
           <input type="text" name="decorQuantity" value="<%=di.getDecorQuantity()%>"/><br><br>
           
           <label>Decor-Price:</label>
           <input type="text" name="decorPrice" value="<%=di.getDecorPrice()%>"/><br><br>
           
          
            
            <button >Update</button>
           
       </form>  
           
            </div>
           
           <br/>
           <br/>
           
        
         <jsp:include page="web/footer_nav.jsp"/>
           
    </body>
    </body>
</html>
