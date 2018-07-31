
package com.edu.eventapp.dao;

import com.edu.eventapp.entity.Events;
import java.util.List;


public interface EventDAO {
    public boolean insert(Events e) throws Exception ;
    public List<Events> getAll() throws Exception;
    public int update(Events et,int id) throws Exception;
    public int delete(int id)throws Exception;
    public Events Search(int id) throws Exception;
    
}
