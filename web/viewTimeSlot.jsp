<%-- 
    Document   : viewFoodItem
    Created on : Mar 18, 2018, 8:43:46 AM
    Author     : kafle
--%>

<%@page import="com.edu.eventapp.dao.TimeSlotDAO"%>
<%@page import="com.edu.eventapp.entity.TimeSlot"%>
<%@page import="com.edu.eventapp.dao.impl.TimeSlotDAOImpl"%>
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
         
         
         <div  style="margin-left: 50px;">
        
        <h1>Show All Time Slots</h1>
      
        <table   border= "1" class="table table-bordered table-hover table_striped" >
            <tr>
                <th>TimeSlot ID:</th>
                <th>TimeSlot StartTime:</th>
                <th>TimeSlot EndTime</th>
                <th>TimeSlot EventActivity:</th>
               
                <th>Action</th>
            </tr>
          
            
            
            <%
                TimeSlotDAO TsDAO = new TimeSlotDAOImpl();
                for(TimeSlot ts : TsDAO.getAll()){
                 %>
                  <tr>
                      <td><%=ts.getId()%></td>
                       <td><%=ts.getStartTime()%></td>
                       <td><%=ts.getEndTime()%></td>
                       <td><%=ts.getEventActivity()%></td>
                       
                       <td><a href="deleteTimeSlot.jsp?id=<%=ts.getId()%>" >Delete</a>
                           <a href="updateTimeSlotForm.jsp?id=<%=ts.getId()%>" >Update</a></td>
                   </tr> 
           
                 <%   
                }
            %>
        </table>
         </div>
            
 <br/>
<br/>
        
         <jsp:include page="web/footer_nav.jsp"/>
       

         
         
                
    </body>
</html>
