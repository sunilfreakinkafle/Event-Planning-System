



<%@page import="com.edu.eventapp.dao.impl.EmployeeDAOImpl"%>
<%@page import="com.edu.eventapp.entity.Employee"%>
<%@page import="com.edu.eventapp.dao.EmployeeDAO"%>
<body>
    
     <%
            EmployeeDAO empDAO = new EmployeeDAOImpl();
            Employee emp = new Employee();
            
            emp.setId(Integer.parseInt(request.getParameter("id")));
            emp.setEmployeeName(request.getParameter("employeeName"));
            emp.setEmployeePost(request.getParameter("employeePost"));
            emp.setEmployeePhno(Integer.parseInt(request.getParameter("employeePhno")));
            
             int id = Integer.parseInt(request.getParameter("id"));
              empDAO.update(emp, id);
               response.sendRedirect("viewEmployee.jsp");               
        
        %>
</body>    