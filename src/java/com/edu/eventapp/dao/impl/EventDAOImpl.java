package com.edu.eventapp.dao.impl;

import com.edu.eventapp.dao.EventDAO;
import com.edu.eventapp.dbutil.DBConn;
import com.edu.eventapp.entity.Events;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EventDAOImpl implements EventDAO {

    private DBConn conn = new DBConn();
    String sql = null;
    private List<Events> etList = new ArrayList<>();

    @Override
    public boolean insert(Events e) throws Exception {
        conn.openConnection();
        sql = "Insert into event (event_id,event_name,start_time,end_time,event_venue) values (?,?,?,?,?)";
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, e.getId());
        stmt.setString(2, e.getEventName());
        stmt.setString(3, e.getStartTime());
        stmt.setString(4, e.getStartTime());
        stmt.setString(5, e.getEventVenue());

        int result = conn.executeUpdate();
        if (result > 0) {
            return true;
        }
        conn.closeConnection();
        return false;
    }

    @Override
    public List<Events> getAll() throws Exception {
        conn.openConnection();
        sql = "Select * from event ";
        conn.initComponent(sql);
        ResultSet result = conn.executeQuery();

        while (result.next()) {
            Events et = new Events();
            et.setId(result.getInt("event_id"));
            et.setEventName(result.getString("event_name"));
            et.setStartTime(result.getString("start_time"));
            et.setEndTime(result.getString("end_time"));
            et.setEventVenue(result.getString("event_venue"));

            etList.add(et);
        }
        conn.closeConnection();
        return etList;

    }

    @Override
    public int update(Events et, int id) throws Exception {
        int status = 0;

        sql = "update event set event_id = ?,event_name = ?,start_time=?,end_time=?,event_venue=? where event_id = ? ";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, et.getId());
        stmt.setString(2, et.getEventName());
        stmt.setString(3, et.getStartTime());
        stmt.setString(4, et.getEndTime());
        stmt.setString(5, et.getEventVenue());
        stmt.setInt(6, id);
        status = conn.executeUpdate();
        conn.closeConnection();
        return status;

    }

    @Override
    public int delete(int id) throws Exception {
        sql = "delete from event where event_id=?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        int status = stmt.executeUpdate();

        conn.closeConnection();
        return status;
    }

    @Override
    public Events Search(int id) throws Exception {
        sql = "select * from event where event_id=?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        ResultSet result = conn.executeQuery();
        Events et = new Events();
        while (result.next()) {

            et.setId(result.getInt("event_id"));
            et.setEventName(result.getString("event_name"));
            et.setStartTime(result.getString("start_time"));
            et.setEndTime(result.getString("end_time"));
            et.setEventVenue(result.getString("event_venue"));
        }
        return et;
    }

}
