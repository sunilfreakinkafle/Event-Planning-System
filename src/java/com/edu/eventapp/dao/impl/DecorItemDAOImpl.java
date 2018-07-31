package com.edu.eventapp.dao.impl;

import com.edu.eventapp.dao.DecorItemDAO;
import com.edu.eventapp.dbutil.DBConn;
import com.edu.eventapp.entity.DecorItem;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DecorItemDAOImpl implements DecorItemDAO {

    private DBConn conn = new DBConn();
    String sql = null;
    private List<DecorItem> diList = new ArrayList<>();

    @Override
    public boolean insert(DecorItem d) throws Exception {
        conn.openConnection();
        sql = "Insert into decoration (decor_id,decor_item,decor_quantity,decor_price) values (?,?,?,?)";
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, d.getId());
        stmt.setString(2, d.getDecorItem());
        stmt.setInt(3, d.getDecorQuantity());
        stmt.setInt(4, d.getDecorPrice());

        int result = conn.executeUpdate();
        if (result > 0) {
            return true;
        }
        conn.closeConnection();
        return false;
    }

    @Override
    public List<DecorItem> getAll() throws Exception {
        conn.openConnection();
        sql = "Select * from decoration ";
        conn.initComponent(sql);
        ResultSet result = conn.executeQuery();

        while (result.next()) {
            DecorItem di = new DecorItem();
            di.setId(result.getInt("decor_id"));
            di.setDecorItem(result.getString("decor_item"));
            di.setDecorQuantity(result.getInt("decor_quantity"));
            di.setDecorPrice(result.getInt("decor_price"));
            diList.add(di);
        }
        conn.closeConnection();
        return diList;
    }

    @Override
    public int update(DecorItem di, int id) throws Exception {
        int status = 0;

        sql = "update decoration set decor_item = ?,decor_quantity=?,decor_price=? where decor_id = ? ";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
       
        stmt.setString(1, di.getDecorItem());
        stmt.setInt(2, di.getDecorQuantity());
        stmt.setInt(3, di.getDecorPrice());
        stmt.setInt(4, id);
        status = conn.executeUpdate();
        conn.closeConnection();
        return status;

    }

    @Override
    public int delete(int id) throws Exception {
        sql = "delete from decoration where decor_id=?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        int status = stmt.executeUpdate();

        conn.closeConnection();
        return status;
    }

    @Override
    public DecorItem Search(int id) throws Exception {
        sql = "select * from decoration where decor_id=?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        ResultSet result = conn.executeQuery();
        DecorItem di = new DecorItem();
        while (result.next()) {

            di.setId(result.getInt("decor_id"));
            di.setDecorItem(result.getString("decor_item"));
            di.setDecorQuantity(result.getInt("decor_quantity"));
            di.setDecorPrice(result.getInt("decor_price"));

        }
        return di;
    }

}
