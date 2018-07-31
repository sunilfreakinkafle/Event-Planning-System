<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Decoration Report</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email Client</title>
        <script>
            function validateForm() {
                var x = document.forms["myForm"]["email"].value;
                var atpos = x.indexOf("@");
                var dotpos = x.lastIndexOf(".");
                if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
                    alert("Not a valid e-mail address");
                    return false;
                }
            }
</script>
    </head>
    <body>
        <jsp:include page="web/nav_bar.jsp"/>
           
        <jsp:include page="web/left_nav.jsp"/>
        
        <h1>Contact us</h1>
        <form name="myForm" method="POST" action="MailDispatcherServlet"onsubmit="return validateForm();">
            <table>
                <tr>
                    <td align="right"><b>Email:</b></td>
                    <td>
                        <input type="text" name="email"size="75">
                    </td>    
                </tr>
                <tr>
                    <td align="right"><b>Subject:</b></td>
                    <td>
                        <input type="text" name="subject"size="75">
                    </td>    
                </tr>
                <tr>
                    <td align="right"><b>Message:</b></td>
                    <td>
                        <textarea name="message" cols="75" rows="6"> </textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="send">
                    </td>    
                </tr>
                
                
            </table>    
        </form> 
        <jsp:include page="web/footer_nav.jsp"/>
    </body>
</html>