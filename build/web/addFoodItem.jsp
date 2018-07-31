<%-- 
    Document   : addFoodItem
    Created on : Mar 18, 2018, 7:58:48 AM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.entity.FoodItem"%>
<%@page import="com.edu.eventapp.dao.impl.FoodItemDAOImpl"%>
<%@page import="com.edu.eventapp.dao.FoodItemDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>ADD FOOD ITEM</title>
        
        
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
            if (request.getMethod().equals("POST")) {
                FoodItemDAO fiDAO = new FoodItemDAOImpl();
                FoodItem fi = new FoodItem();

                fi.setFoodItem(request.getParameter("foodItem"));
                fi.setFoodQuantity(Integer.parseInt(request.getParameter("foodQuantity")));
                fi.setFoodPrice(Integer.parseInt(request.getParameter("foodPrice")));
                fiDAO.insert(fi);
            }
        %>
        
        
         <jsp:include page="web/nav_bar.jsp"/>
         
        <jsp:include page="web/left_nav.jsp"/>
         
       
         <div style="margin-top:120px; margin-left: 150px;">
        <form method="POST">

            <label>Food-Item:</label>
            <input type="text" name="foodItem"/><br/><br/>
            <label>Food-Quantity:</label>
            
            <input type="text" name="foodQuantity"/><br/><br/>
            <label>Food-Price:</label>
            
            <input type="text" name="foodPrice"/><br/><br/>


            <button type="submit">OK</button>
        </form> 
         </div>
<br/>
<br/>
        
         <jsp:include page="web/footer_nav.jsp"/>
         
       
    </body>
</html>
