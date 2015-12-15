package com.seven.service;

import com.seven.model.TRemark;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

/**
 * Created by Seven-Yang on 2015/12/14.
 */
public class RemarkService {

    @Resource(name = "jdbcTemplate")
    private JdbcTemplate jdbcTemplate;

    public List<Map<String,Object>>  listRemarks(){
        String sql = "select * from t_remark order by dtime desc;";
        List<Map<String,Object>> res = jdbcTemplate.queryForList(sql);
        if ( null == res || res.size() <= 0 ){
            return null;
        }else{
            return res;
        }
    }

    public boolean saveRemark(TRemark rmk) throws UnsupportedEncodingException {
        StringBuffer sf = new StringBuffer();
        String title = new String( rmk.getTitle().getBytes("ISO-8859-1"), "utf-8");
        sf.append("insert into t_remark values('").append(title).append("','")
                .append(rmk.getTxt()).append("','").append(rmk.getDtime()).append("')");
        int ret = jdbcTemplate.update(sf.toString());
        if ( ret <= 0){
            return  false;
        }else{
            return true;
        }
    }
}
