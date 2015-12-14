package com.seven.model;

/**
 * Created by Administrator on 2015/12/10.
 */
public class TBackup {

    private  String savePath = "/usr/loca/yang/backup";

    private String  email = "";

    private String  toemail = "";

    public void setSavePath(String s){
        savePath = s;
    }
    public String getSavePath(){
        return  savePath;
    }

    public void setEmail(String s){
        email = s;
    }
    public String getEmail(){
        return email;
    }

    public void setToemail(String s){
        toemail =s;
    }
    public String getToemail(){
        return  toemail;
    }
}
