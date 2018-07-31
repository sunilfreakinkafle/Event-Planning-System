
package com.edu.eventapp.dao;

import com.edu.eventapp.entity.DecorItem;
import java.util.List;

public interface DecorItemDAO {
    public boolean insert(DecorItem d) throws Exception ;
    public List<DecorItem> getAll() throws Exception;
    public int update(DecorItem di,int id) throws Exception;
    public int delete(int id)throws Exception;
    public DecorItem Search(int id) throws Exception;
}
