/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.edu.eventapp.entity;

public class Member {
private int id,memberPhno;
private String memberName,memberEmail;

public Member(){
    
}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMemberPhno() {
        return memberPhno;
    }

    public void setMemberPhno(int memberPhno) {
        this.memberPhno = memberPhno;
    }

    public String getMemberName() {
        return memberName;
    }

    /**
     *
     * @param memberName
     */
    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getMemberEmail() {
        return memberEmail;
    }

    public void setMemberEmail(String memberEmail) {
        this.memberEmail = memberEmail;
    }

}
