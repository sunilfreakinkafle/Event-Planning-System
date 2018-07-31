



<%@page import="com.edu.eventapp.dao.impl.EmployeeDAOImpl"%>
<%@page import="com.edu.eventapp.entity.Employee"%>
<%@page import="com.edu.eventapp.dao.EmployeeDAO"%>
<html>
    <head>
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
    
   <%
        int id = Integer.parseInt(request.getParameter("id"));
        EmployeeDAO empDAO = new EmployeeDAOImpl();
        Employee emp = empDAO.Search(id);
         
        %> 
        
        
        <div style="margin-left: 90px;"> 
        <form method="POST" action="updateEmployee.jsp?id=<%=emp.getId()%>" >
            
             <div class="form-group">
           
           <input type="hidden" name="id" value="<%=emp.getId()%>"/><br><br>
           
           <label>Employee-Name:</label>
           <input type="text" name="employeeName" value="<%=emp.getEmployeeName()%>"/><br><br>
           
           <label>Employee-Post:</label>
           <input type="text" name="employeePost" value="<%=emp.getEmployeePost()%>"/><br><br>
           
           <label>Employee-Phno:</label>
           <input type="text" name="employeePhno" value="<%=emp.getEmployeePhno()%>"/><br><br>
          
            <button >Update</button>
            </div>
       </form> 
        </div>
           
           <br>
           <br>
         
         <jsp:include page="web/footer_nav.jsp"/>
    
</body>    
</html>