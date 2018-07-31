/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edu.eventapp.dao.impl;

import com.edu.eventapp.dao.TimeSlotDAO;
import com.edu.eventapp.dbutil.DBConn;
import com.edu.eventapp.entity.TimeSlot;
import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kafle
 */
public class TimeSlotDAOImpl implements TimeSlotDAO{
    private DBConn conn = new DBConn();
     String sql = null;
     private List<TimeSlot> tesList = new ArrayList<>();
    public boolean insert(TimeSlot ts) throws Exception{
        conn.openConnection();
        sql = "Insert into time_slot (timeslot_id,start_time,end_time,event_activity) values (?,?,?,?)";
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, ts.getId());
        stmt.setString(2, ts.getStartTime());
        stmt.setString(3, ts.getEndTime());
        stmt.setString(4, ts.getEventActivity());
        
        int result = conn.executeUpdate();
        if (result > 0) {
            return true;
        }
        conn.closeConnection();
        return false;
    }
    
    public List<TimeSlot> getAll() throws Exception{
        conn.openConnection();
        sql = "Select * from time_slot ";
        conn.initComponent(sql);
        ResultSet result = conn.executeQuery();

        while (result.next()) {
           TimeSlot tes = new TimeSlot();
            tes.setId(result.getInt("timeslot_id"));
            tes.setStartTime(result.getString("start_time"));
            tes.setEndTime(result.getString("end_time"));
            tes.setEventActivity(result.getString("event_activity"));
           

            tesList.add(tes);
        }
        conn.closeConnection();
        return tesList;
    }
    public int update(TimeSlot tes,int id) throws Exception{
        int status = 0;

        sql = "update time_slot set timeslot_id = ?,start_time = ?,end_time=?,event_activity=? where timeslot_id = ? ";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, tes.getId());
        stmt.setString(2, tes.getStartTime());
        stmt.setString(3, tes.getEndTime());
        stmt.setString(4,tes.getEventActivity() );
       
        stmt.setInt(5,id);
        status = conn.executeUpdate();
        conn.closeConnection();
        return status;
    }
    public int delete(int id)throws Exception{
        sql = "delete from time_slot where timeslot_id=?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        int status = stmt.executeUpdate();

        conn.closeConnection();
        return status;
    }
    public TimeSlot Search(int id) throws Exception{
        sql = "select * from time_slot where timeslot_id = ?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        ResultSet result = conn.executeQuery();
        TimeSlot tes = new TimeSlot();
        while (result.next()) {

            tes.setId(result.getInt("timeslot_id"));
            tes.setStartTime(result.getString("start_time"));
            tes.setEndTime(result.getString("end_time"));
            tes.setEventActivity(result.getString("event_activity"));
        }
        return tes;
    }
    

}

