<%-- 
    Document   : login_form
    Created on : May 28, 2018, 7:37:28 PM
    Author     : bijen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Event</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Sacramento" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

        
        <style>
                  .submit_form{
                margin-left: 450px;
                margin-top: 100px;
                
                height:260px;
                width:400px;
            }
            </style>
        
	</head>
	<body>
		

            <div id="page">
                <nav class="fh5co-nav" role="navigation">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-6">
                                <div id="fh5co-logo">Event Planning system</div>
                            </div>

                            <div class="col-xs-6 text-right menu-1">
                                <ul>
                                    <li class="active"><a href="index.jsp">Home</a></li>

                                    <li><a href="about.html">About Us</a></li>
                                    <li><a href="contact.html">Gallary </a></li>

                                    <li><a href="conatct_us.jsp">Contact US</a></li>

                                    <li><a href="login_form.jsp">Login</a></li>

                                </ul>
                            </div>
                        </div>

                    </div>
                </nav>
                    </div>



                <div class="submit_form">

                    <form name="myForm" method="post" action="login.jsp">
                        <input type="text" name="username" class="form-control" placeholder="username"><br><br>

                        <input type="password" name="password" class="form-control" placeholder="password"><br>

                        <button type="submit" name="action" value="login" class="btn">login</button>
                    </form>

                    </div>
            
                
 
            
    </body>
    
    
    
</html>
