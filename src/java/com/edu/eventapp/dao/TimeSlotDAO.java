/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edu.eventapp.dao;

import com.edu.eventapp.entity.TimeSlot;
import java.util.List;

/**
 *
 * @author kafle
 */
public interface TimeSlotDAO {
   public boolean insert(TimeSlot ts) throws Exception ;
    public List<TimeSlot> getAll() throws Exception;
    public int update(TimeSlot tes,int id) throws Exception;
    public int delete(int id)throws Exception;
    public TimeSlot Search(int id) throws Exception; 
}
