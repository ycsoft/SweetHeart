package com.seven.service;

import com.seven.model.TBlog;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by Seven Yang on 2015/12/6.
 */
@Service
public class BlogService {
    @Resource(name = "jdbcTemplate")
    private JdbcTemplate jdbcTemplate;

    public boolean saveBlog(TBlog blog) throws UnsupportedEncodingException {
        StringBuffer sf = new StringBuffer();
        String sdate, title,data,img ;

        title = new String( blog.getTitle().getBytes("ISO-8859-1"),"utf-8");
        data   = new String(blog.getData().getBytes("ISO-8859-1"),"utf-8");
        img   = new String(blog.getImg().getBytes("ISO-8859-1"),"utf-8");

        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        sdate = sdformat.format( new Date());
        sf.append("insert into t_blog values('").append(title)
                .append("','").append(data).append("','").append(sdate).append("','").append(img).append("')");
        int ret = jdbcTemplate.update(sf.toString());
        if ( ret > 0){
            return true;
        }else{
            return false;
        }
    }

    public TBlog queryBlog(String title){
        TBlog blog = new TBlog();
        String sql = "select * from t_blog where title = '" + title + "'";
        List<Map<String,Object>> res = jdbcTemplate.queryForList(sql);
        if ( res == null || res.size() <= 0){
            return null;
        }else{
            blog.setTitle((String) res.get(0).get("title"));
            blog.setData((String) res.get(0).get("txt"));
        }
        return blog;
    }
    public List<Map<String,Object>> listBlog(){
        String sql = "select * from t_blog ORDER BY dtime DESC";
        if ( jdbcTemplate.queryForInt("select count(*) from t_blog") <= 0 ){
            return null;
        }
        List< Map<String ,Object>> all = jdbcTemplate.queryForList(sql);
        return all;
    }

}
