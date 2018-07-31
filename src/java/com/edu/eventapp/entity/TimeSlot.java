/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edu.eventapp.entity;


public class TimeSlot {
    private int id;
    private String startTime,endTime,eventActivity;
    
    public TimeSlot(){
    
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getEventActivity() {
        return eventActivity;
    }

    public void setEventActivity(String eventActivity) {
        this.eventActivity = eventActivity;
    }
    
}
