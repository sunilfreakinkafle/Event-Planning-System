<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>

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
	

	
            <div class="fh5co-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-md-push-6 animate-box">
                            <h3>Get In Touch</h3>
                            
                            <form action="feedback_insertdb.jsp" method="POST">
                                <div class="row form-group">
                                    <div class="col-md-6">
                                        <label>First Name</label>
                                        <input type="text" name="fname" class="form-control" placeholder="Your firstname">
                                    </div>
                                    <div class="col-md-6">
                                        <label>Last Name</label>
                                        <input type="text" name="lname" class="form-control" placeholder="Your lastname">
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <label>Email</label>
                                        <input type="text" name="email" class="form-control" placeholder="Your email address">
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <label>Subject</label>
                                        <input type="text" name="subject" class="form-control" placeholder="Your subject of this message">
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col-md-12">
                                        <label>Message</label>
                                        <textarea id=""  name="message" cols="30" rows="10" class="form-control" placeholder="Write us something"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary" value="Submit">
                                </div>

                            </form>		
                        </div>
                        <div class="col-md-5 col-md-pull-5 animate-box">

                            <div class="fh5co-contact-info">
                                <h3>Contact Information</h3>
                                <ul>
                                    <li class="address">Street sharemarket, <br> putalishadakh </li>
                                    <li class="phone"><a href="tel://1234567920">+ 977 9841257812</a></li>
                                    <li class="email"><a href="mailto:info@yoursite.com">kafle.sunil857@gmail.com</a></li>
                                    <li class="url"><a href="http://www.bijenduwal.com.np">bijenduwal.com.np</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
            
            
            <div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3532.4374420581207!2d85.32095551470023!3d27.70377698279341!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb19a86d92de5f%3A0xd6a23381c4e35c7e!2sKantipur+City+College!5e0!3m2!1sen!2snp!4v1527742800467" width="1600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>

            
            <footer id="fh5co-footer" role="contentinfo">
                <div class="container">

                    <div class="row copyright">
                        <div class="col-md-12 text-center">
                            <p>
                                <small class="block">&copy; 2018 Follow Us On </small> 

                            </p>
                            <p>
                            <ul class="fh5co-social-icons">
                                <li><a href="#"><i class="icon-twitter"></i></a></li>
                                <li><a href="#"><i class="icon-facebook"></i></a></li>
                                <li><a href="#"><i class="icon-linkedin"></i></a></li>
                                <li><a href="#"><i class="icon-dribbble"></i></a></li>
                            </ul>
                            </p>
                        </div>
                    </div>

                </div>
            </footer>

            <div class="gototop js-top">
                <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
            </div>

            <!-- jQuery -->
            <script src="js/jquery.min.js"></script>
            <!-- jQuery Easing -->
            <script src="js/jquery.easing.1.3.js"></script>
            <!-- Bootstrap -->
            <script src="js/bootstrap.min.js"></script>
            <!-- Waypoints -->
            <script src="js/jquery.waypoints.min.js"></script>
            <!-- Carousel -->
            <script src="js/owl.carousel.min.js"></script>
            <!-- countTo -->
            <script src="js/jquery.countTo.js"></script>

            <!-- Stellar -->
            <script src="js/jquery.stellar.min.js"></script>
            <!-- Magnific Popup -->
            <script src="js/jquery.magnific-popup.min.js"></script>
            <script src="js/magnific-popup-options.js"></script>
            <!-- Google Map -->
            

            <!-- Main -->
            <script src="js/main.js"></script>

                      
 
            
        </body>
        </html>

