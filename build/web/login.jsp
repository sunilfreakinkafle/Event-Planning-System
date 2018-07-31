<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%
    String action = request.getParameter("action");
    if (action.equals("login")) {
        String username = request.getParameter("username");
        String pwd = request.getParameter("password");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root", "");
            Statement st = con.createStatement();
            
            ResultSet employee = st.executeQuery("select * from employee_login where employee_username='" +username+ "' and employee_password='" +pwd+ "' ");
            if (employee.next()) {
                response.sendRedirect("employee_panal/employee_panal.jsp");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Username and password donot match')");
                out.println("location='index.jsp';");
                out.println("</script>");
            }
            
            ResultSet rs = st.executeQuery("select * from admin where username='" +username+ "' and password='" +pwd+ "' ");
            if (rs.next()) {
                response.sendRedirect("web/admin.jsp");
            } else {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Username and password donot match')");
                out.println("location='index.jsp';");
                out.println("</script>");
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

%> 


