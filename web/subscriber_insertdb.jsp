
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    
    <%

        String f_name = request.getParameter("fullname");
    
        String email = request.getParameter("email");
       
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root","");   
           String sql= "INSERT INTO subscribers (full_name,email) VALUES(?,?)";
           PreparedStatement st = con.prepareStatement(sql);
           st.setString(1,f_name);
           st.setString(2,email);
           
           st.executeUpdate(); 
        
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    

%> 


    <script>    
    alert("Message was send sucessfully");
    window.location.href = "/Event_Planning_System/faces/index.jsp";
    </script>

    
</html>
