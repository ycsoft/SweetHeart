package com.seven.service;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by Seven Yang on 2015/12/3.
 */
@Service
public class UserServ {


//    private String  usrname;
    private  static  final  String EXTINFO = "muyao";
    @Resource(name = "jdbcTemplate")
    private JdbcTemplate jdbcTemplate;

//    public void setUsrname( String s){
//        usrname = s;
//    }
//    public String getUsrname(){
//        return usrname;
//    }
    public int  MaxUid(){
        int res = 0;
        String sql = "select max(uid) from t_usr";
        res = jdbcTemplate.queryForInt(sql);
        return res;

    }
    public String MD5(String input) throws NoSuchAlgorithmException {
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        byte [] binput = input.getBytes();
        md5.update(binput);
        String res = new BigInteger(1,md5.digest()).toString(16);
        return res;
    }
    public void SaveUser(String usr,String pwd){
        int id = MaxUid() + 1;
        StringBuffer sb = new StringBuffer();

        sb.append("insert into t_usr values(").append(id).append(",'").append(usr).append("','").append(pwd).append("')");
        jdbcTemplate.update(sb.toString());
    }
    public boolean CheckUser(String usr,String pwd){
        StringBuffer sf = new StringBuffer();
        sf.append("select count(*) from t_usr where uname='").append(usr).append("' and upwd='").append(pwd).append("'");
        int ret = jdbcTemplate.queryForInt(sf.toString());
        if ( ret <= 0 ){
            return false;
        }else{
            return true;
        }
    }
    public String GetToken(String key) throws NoSuchAlgorithmException {
        String ret = null;
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        key += EXTINFO;
        byte [] input = key.getBytes();
        md5.update(input);
        ret = new BigInteger(1,md5.digest()).toString();
        return ret;

    }
}
