package com.seven.service;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Seven Yang on 2015/12/5.
 */
@Service
public class StudyService {

    @Resource(name = "jdbcTemplate")
    private JdbcTemplate jdbcTemplate;

    public String saveStudy(String title,String data) throws UnsupportedEncodingException {
        Date dt = new Date();
        String sdate;
        StringBuffer sf = new StringBuffer();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        sdate = format.format(dt);
        title = new String(title.getBytes("ISO-8859-1"),"utf8");
        String sdata = new String(data.getBytes("ISO-8859-1"),"utf-8");
        sf.append("insert into t_study values('").append(title).append("','").append(sdata).append("','").append(sdate).append("')");
        System.out.println(sf.toString());
        int ret = jdbcTemplate.update(sf.toString());
        if ( ret <= 0 ){
            return "ok";
        }else{
            return "error";
        }

    }

    public List<Map<String,Object>> listStudy(){
        List< Map<String,Object> > res = null;
        String sql = "select * from t_study order by dtime DESC";
        if ( jdbcTemplate.queryForInt("select count(*) from t_study") <= 0 ){
            return null;
        }
        res = jdbcTemplate.queryForList(sql);
        return res;
    }

    public Map<String,Object> getDataByTitle(String title){
        String sql = "select * from t_study where title='" + title + "'";
        List<Map<String,Object>> res = jdbcTemplate.queryForList(sql);
        if ( res.size() <= 0){
            return  null;
        }else{
            return res.get(0);
        }
    }
}
