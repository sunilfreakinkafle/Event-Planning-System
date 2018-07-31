
package com.edu.eventapp.dao.impl;

import com.edu.eventapp.dao.MemberDAO;
import com.edu.eventapp.dbutil.DBConn;
import com.edu.eventapp.entity.Member;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class MemberDAOImpl implements MemberDAO {
     private DBConn conn = new DBConn();
    String sql = null;
    private List<Member> memList = new ArrayList<>();
    
    @Override
    public boolean insert(Member m) throws Exception {
        conn.openConnection();
        sql = "Insert into member (member_id,member_name,member_email,member_phno) values (?,?,?,?)";
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, m.getId());
        stmt.setString(2, m.getMemberName());
        stmt.setString(3, m.getMemberEmail());
        stmt.setInt(4, m.getMemberPhno());
       

        int result = conn.executeUpdate();
        if (result > 0) {
            return true;
        }
        conn.closeConnection();
        return false;
    
    }

    @Override
    public List<Member> getAll() throws Exception {
       conn.openConnection();
        sql = "Select * from member ";
        conn.initComponent(sql);
        ResultSet result = conn.executeQuery();

        while (result.next()) {
            Member mem = new Member();
            mem.setId(result.getInt("member_id"));
            mem.setMemberName(result.getString("member_name"));
            mem.setMemberEmail(result.getString("member_email"));
            mem.setMemberPhno(result.getInt("member_phno"));
            

            memList.add(mem);
        }
        conn.closeConnection();
        return memList;

    }

    @Override
    public int update(Member mem, int id) throws Exception {
        int status = 0;

        sql = "update member member_name=?, member_email=?, member_phno=? where member_id =?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
       
        stmt.setString(1, mem.getMemberName());
        stmt.setString(2, mem.getMemberEmail());
        stmt.setInt(3, mem.getMemberPhno());
        stmt.setInt(4,id);
        
        status = conn.executeUpdate();
        conn.closeConnection();
        return status;
    }

    @Override
    public int delete(int id) throws Exception {
        sql = "delete from member where member_id=?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        int status = stmt.executeUpdate();

        conn.closeConnection();
        return status;
    }

    @Override
    public Member Search(int id) throws Exception {
        sql = "select * from member where member_id=?";
        conn.openConnection();
        PreparedStatement stmt = conn.initComponent(sql);
        stmt.setInt(1, id);
        ResultSet result = conn.executeQuery();
        Member mem = new Member();
        while (result.next()) {

            mem.setId(result.getInt("member_id"));
            mem.setMemberName(result.getString("member_name"));
            mem.setMemberEmail(result.getString("member_email"));
            mem.setMemberPhno(result.getInt("member_phno"));
        }
        return mem;
    
    }
    
}
