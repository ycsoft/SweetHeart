package com.seven.model;

import org.springframework.beans.factory.annotation.Autowired;

import javax.xml.ws.ServiceMode;

/**
 * Created by Seven Yang on 2015/12/3.
 */

public class TUser {
    private String name;
    private String pwd;

    public  void setName(String  s){
        name = s;
    }
    public String getName(){
        return name;
    }

    public void setPwd(String p){
        pwd = p;
    }
    public  String getPwd(){
        return pwd;
    }
}
