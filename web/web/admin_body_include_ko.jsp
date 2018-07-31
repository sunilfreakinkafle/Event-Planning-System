<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    
    <body>
        
        
      <div style="margin-left:1100px;"> <input type="button" value="View Suscriber" class="btn btn-default btn-block" onclick="window.location.href='../view_subscriber_list.jsp';return false;">
        </div>
        
        
          <h2> People Feedback :- </h2>
        <br>
          
        <table   border= "1" class="table table-bordered table-hover table_striped" >
            <tr>
                <th>First Name </th>
                <th>Last Name</th>
                <th>Email </th>
                <th>Subject </th>
                <th>Message </th>
                <th>Reply </th>
                <th>Date </th>
            </tr>
          
            
            
            <%
                
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root","");   
            Statement st = con.createStatement();
           
             ResultSet rs= st.executeQuery("SELECT * FROM people_feedback ORDER BY  date DESC LIMIT 4;");
             while(rs.next()){
                 %>
                  <tr>
                      <td><%=rs.getString(2)%></td>
                       <td><%=rs.getString(3)%></td>
                       <td><%=rs.getString(4)%></td>
                       <td><%=rs.getString(5)%></td>
                      <td><%=rs.getString(6)%></td>
                      <td><%=rs.getString(7)%></td>
                      <td><a href="../emailClient.jsp">Reply</a></td>
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
        
        

 <div style="margin-left:1100px;"> <input type="button" value="See All Feedbacks" class="btn btn-default btn-block" onclick="window.location.href='admin.jsp';return false;">
        </div>
<br>     
        
        
    

    </body>
</html>
