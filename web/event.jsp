<%-- 
    Document   : event
    Created on : Mar 7, 2018, 4:05:45 PM
    Author     : kafle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
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
        
        <h1>Event</h1>
        
        <div class="tab">
            <a href="addEvent.jsp"><button class="tablinks" onclick="openCity(event, 'addEvent')">AddEvent</button></a>
            <a href="viewEvent.jsp"><button class="tablinks" onclick="openCity(event, 'updateEvent')">UpdateEvent</button></a>
            <a href="viewEvent.jsp"><button class="tablinks" onclick="openCity(event, 'deleteEvent')">DeleteEvent</button></a>
            <a href="viewEvent.jsp"><button class="tablinks" onclick="openCity(event, 'viewEvent')">viewEvent</button></a>
        </div>
       
         
       
         
        <br/>
        <br/>
         
         <jsp:include page="web/footer_nav.jsp"/>
    </body>
</html>
