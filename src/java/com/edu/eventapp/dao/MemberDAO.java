/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edu.eventapp.dao;

import com.edu.eventapp.entity.Member;
import java.util.List;

public interface MemberDAO {
    public boolean insert(Member m) throws Exception ;
    public List<Member> getAll() throws Exception;
    public int update(Member mem,int id) throws Exception;
    public int delete(int id)throws Exception;
    public Member Search(int id) throws Exception;
    
}
