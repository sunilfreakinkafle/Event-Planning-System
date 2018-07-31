
package com.edu.eventapp.dbutil;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConn {
    private Connection conn= null;
    private PreparedStatement stmt = null;
    
    public void openConnection() throws ClassNotFoundException,SQLException {
        
        Class.forName("com.mysql.jdbc.Driver");
        conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/event", "root", "");
    }
    
    public PreparedStatement initComponent(String sql) throws SQLException {
        stmt = (PreparedStatement) conn.prepareStatement(sql);
        return stmt;
        
    }
     
    public int executeUpdate() throws Exception {
        return stmt.executeUpdate();
    }
    
    public ResultSet executeQuery() throws Exception {
        return stmt.executeQuery();
    }
    
    public void closeConnection() throws Exception {
        if(conn!=null && !conn.isClosed()){
            conn.close();
        }
    }
    
}
