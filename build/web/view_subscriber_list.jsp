
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
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
        
        <h1>All subscriber list</h1>
        
                <table   border= "1" class="table table-bordered table-hover table_striped" >
            <tr>
                <th>Full Name </th>
                <th>Email</th>
                <th>Date</th>
                <th>Reply </th>
            </tr>
          
            
            
            <%
                
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root","");   
            Statement st = con.createStatement();
           
             ResultSet rs= st.executeQuery("SELECT * FROM subscribers ORDER BY  date DESC");
             while(rs.next()){
                 %>
                  <tr>
                      <td><%=rs.getString(2)%></td>
                       <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                      <td><a href="emailClient.jsp">Reply</a></td>
                   </tr> 
           <%
          }       
            %>
        </table>
            <%
    rs.close();
    st.close();
    con.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }
%> 
        
        
    </body>
</html>
