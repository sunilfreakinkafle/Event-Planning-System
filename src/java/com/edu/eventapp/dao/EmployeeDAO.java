/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edu.eventapp.dao;

import com.edu.eventapp.entity.Employee;
import java.util.List;

public interface EmployeeDAO {
    public boolean insert(Employee e) throws Exception ;
    public List<Employee> getAll() throws Exception;
    public int update(Employee emp,int id) throws Exception;
    public int delete(int id)throws Exception;
    public Employee Search(int id) throws Exception;
    
    
}
