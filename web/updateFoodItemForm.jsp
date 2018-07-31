<%-- 
    Document   : updateFoodItemForm
    Created on : Mar 22, 2018, 7:35:00 AM
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
        <title>Update Food item Form</title>
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
        FoodItemDAO fiDAO = new FoodItemDAOImpl();
        FoodItem fi = fiDAO.Search(id);
         
        %>
        <form method="POST" action="updateFoodItem.jsp?id=<%=fi.getId()%>" >
             <div class="form-group">
           
           <input type="hidden" name="id" value="<%=fi.getId()%>"/>
           
           <label>Food-Item:</label>
           <input type="text" name="foodItem" value="<%=fi.getFoodItem()%>"/><br><br>
           
           <label>Food-Quantity:</label> 
           <input type="text" name="foodQuantity" value="<%=fi.getFoodQuantity()%>"/><br><br>
           
           <label>Food-Price:</label>
           <input type="text" name="foodPrice" value="<%=fi.getFoodPrice()%>"/><br><br>
          
            <button >Update</button>
            </div>
       </form> 
           
           <br>
           <br>
       
         <jsp:include page="web/footer_nav.jsp"/>
         
    </body>
</html>
