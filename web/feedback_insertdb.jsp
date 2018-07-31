
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%
 
    
        String f_name = request.getParameter("fname");
       String l_name = request.getParameter("lname");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root","");   
           String sql= "INSERT INTO people_feedback (first_name,last_name,email,subject,message) VALUES(?,?,?,?,?)";
           PreparedStatement st = con.prepareStatement(sql);
           st.setString(1,f_name);
           st.setString(2,l_name);
           st.setString(3,email);
           st.setString(4,subject);
           st.setString(5,message); 
           st.executeUpdate(); 
        
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    

%> 

<script>
    
    alert("Message was send sucessfully");
    window.location.href = "/Event_Planning_System/faces/conatct_us.jsp";
    </script>

    </body>
</html>
