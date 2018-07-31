/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edu.eventapp.dao.impl;

import com.edu.eventapp.dao.FoodItemDAO;
import com.edu.eventapp.dbutil.DBConn;
import com.edu.eventapp.entity.FoodItem;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kafle
 */
public class FoodItemDAOImpl implements FoodItemDAO {

    private DBConn conn = new DBConn();
    String sql = null;
    private List<FoodItem> fiList = new ArrayList<>();

    @Override
    public boolean insert(FoodItem f) throws Exception {
        conn.openConnection();
        sql = "Insert into food (food_id,food_item,food_quantity,food_price) values (?,?,?,?)";
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, f.getId());
        stmt.setString(2, f.getFoodItem());
        stmt.setInt(3, f.getFoodQuantity());
        stmt.setInt(4, f.getFoodPrice());

        int result = conn.executeUpdate();
        if (result > 0) {
            return true;
        }
        conn.closeConnection();
        return false;
    }

    @Override
    public List<FoodItem> getAll() throws Exception {
        conn.openConnection();
        sql = "Select * from food ";
        conn.initComponent(sql);
        ResultSet result = conn.executeQuery();

        while (result.next()) {
            FoodItem fi = new FoodItem();
            fi.setId(result.getInt("food_id"));
            fi.setFoodItem(result.getString("food_item"));
            fi.setFoodQuantity(result.getInt("food_quantity"));
            fi.setFoodPrice(result.getInt("food_price"));
            fiList.add(fi);
        }
        conn.closeConnection();
        return fiList;
    }

    @Override
    public int update(FoodItem fi, int id) throws Exception {
        int status = 0;

        sql = "update food set food_item = ?,food_quantity=?,food_price=? where food_id = ? ";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
  
        stmt.setString(1, fi.getFoodItem());
        stmt.setInt(2, fi.getFoodQuantity());
        stmt.setInt(3, fi.getFoodPrice());

        stmt.setInt(4, id);
        status = conn.executeUpdate();
        conn.closeConnection();
        return status;
    }

    @Override
    public int delete(int id) throws Exception {
        sql = "delete from food where food_id=?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        int status = stmt.executeUpdate();

        conn.closeConnection();
        return status;
    }

    @Override
    public FoodItem Search(int id) throws Exception {
        sql = "select * from food where food_id=?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        ResultSet result = conn.executeQuery();
        FoodItem fi = new FoodItem();
        while (result.next()) {

            fi.setId(result.getInt("food_id"));
            fi.setFoodItem(result.getString("food_item"));
            fi.setFoodQuantity(result.getInt("food_quantity"));
            fi.setFoodPrice(result.getInt("food_price"));

        }
        return fi;
    }

}
