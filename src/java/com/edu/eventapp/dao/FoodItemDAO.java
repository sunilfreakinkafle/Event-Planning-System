
package com.edu.eventapp.dao;


import com.edu.eventapp.entity.FoodItem;
import java.util.List;


public interface FoodItemDAO {
    public boolean insert(FoodItem f) throws Exception ;
    public List<FoodItem> getAll() throws Exception;
    public int update(FoodItem fi,int id) throws Exception;
    public int delete(int id)throws Exception;
    public FoodItem Search(int id) throws Exception;
}
