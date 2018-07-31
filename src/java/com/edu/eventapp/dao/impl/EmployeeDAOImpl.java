/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edu.eventapp.dao.impl;

import com.edu.eventapp.dao.EmployeeDAO;
import com.edu.eventapp.dbutil.DBConn;
import com.edu.eventapp.entity.Employee;
import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAOImpl implements EmployeeDAO{
     private DBConn conn = new DBConn();
     String sql = null;
     private List<Employee> empList = new ArrayList<>();

    @Override
    public boolean insert(Employee e) throws Exception {
        conn.openConnection();
        sql = "Insert into employee (employee_id,employee_name,employee_post,employee_phno) values (?,?,?,?)";
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, e.getId());
        stmt.setString(2, e.getEmployeeName());
        stmt.setString(3, e.getEmployeePost());
        stmt.setInt(4, e.getEmployeePhno());
        
        int result = conn.executeUpdate();
        if (result > 0) {
            return true;
        }
        conn.closeConnection();
        return false;
    }

    @Override
    public List<Employee> getAll() throws Exception {
       conn.openConnection();
        sql = "Select * from employee ";
        conn.initComponent(sql);
        ResultSet result = conn.executeQuery();

        while (result.next()) {
            Employee emp = new Employee();
            emp.setId(result.getInt("employee_id"));
            emp.setEmployeeName(result.getString("employee_name"));
            emp.setEmployeePost(result.getString("employee_post"));
            emp.setEmployeePhno(result.getInt("employee_phno"));
           

            empList.add(emp);
        }
        conn.closeConnection();
        return empList;
    }

    @Override
    public int update(Employee emp, int id) throws Exception {
        int status = 0;

        sql = "update employee set employee_name = ?,employee_post=?,employee_phno=? where employee_id = ? ";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
   
        stmt.setString(1,emp.getEmployeeName());
        stmt.setString(2,emp.getEmployeePost());
        stmt.setInt(3,emp.getEmployeePhno());
       
        stmt.setInt(4,id);
        status = conn.executeUpdate();
        conn.closeConnection();
        return status;
    }

    @Override
    public int delete(int id) throws Exception {
        sql = "delete from employee where employee_id=?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        int status = stmt.executeUpdate();

        conn.closeConnection();
        return status;
    }

    @Override
    public Employee Search(int id) throws Exception {
        sql = "select * from employee where employee_id = ?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        ResultSet result = conn.executeQuery();
        Employee emp = new Employee();
        while (result.next()) {

            emp.setId(result.getInt("employee_id"));
            emp.setEmployeeName(result.getString("employee_name"));
            emp.setEmployeePost(result.getString("employee_post"));
            emp.setEmployeePhno(result.getInt("employee_phno"));
            
        }
        return emp;
    }
    }
    

