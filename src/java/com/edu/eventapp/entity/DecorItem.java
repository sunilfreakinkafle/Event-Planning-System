
package com.edu.eventapp.entity;


public class DecorItem {
    private int id,decorQuantity,decorPrice;
    private String decorItem;
    
    public  DecorItem(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDecorQuantity() {
        return decorQuantity;
    }

    public void setDecorQuantity(int decorQuantity) {
        this.decorQuantity = decorQuantity;
    }

    public int getDecorPrice() {
        return decorPrice;
    }

    public void setDecorPrice(int decorPrice) {
        this.decorPrice = decorPrice;
    }

    public String getDecorItem() {
        return decorItem;
    }

    public void setDecorItem(String decorItem) {
        this.decorItem = decorItem;
    }
    
    
}

