package com.seven.controller;

import com.seven.auth.LoginController;
import com.seven.model.TBackup;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/**
 * Created by Administrator on 2015/12/10.
 */
@Controller
@SessionAttributes("usr")

public class BackupController {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate tmp){
        jdbcTemplate = tmp;
    }
    public  JdbcTemplate getJdbcTemplate(){
        return jdbcTemplate;
    }
    private TBackup backup;

    public void setBackup(TBackup bk){
        backup = bk;
    }
    public TBackup getBackup(){
        return backup;
    }

    @RequestMapping(value = "/backup")
    public String backup(Model md) throws IOException, MessagingException {
        System.out.println("BackUp");
        if ( !LoginController.isLogined(md)){
            return "login";
        }
        File f = new File(backup.getSavePath()+ File.separator + "study.sql");
        System.out.println(f.getAbsolutePath());
        FileOutputStream fos = new FileOutputStream(f);
        List<Map<String,Object>> res = jdbcTemplate.queryForList("select * from t_study");

        if ( res != null && res.size() > 0 ){
            System.out.println("Begin to Backup");
            StringBuffer sbuf = new StringBuffer();
            Iterator it = res.iterator();
            while( it.hasNext() ){
                Map<String,Object> row = (Map<String, Object>) it.next();
                sbuf.append("insert into t_study values(");
                sbuf.append("'").append(row.get("title")).append("'");
                sbuf.append(",'").append(row.get("txt")).append("'");
                sbuf.append(",'").append(row.get("dtime")).append("');").append("\r\n");
                fos.write(sbuf.toString().getBytes());
            }
        }
        fos.flush();
        fos.close();


        f = new File(backup.getSavePath()+ File.separator + "blog.sql");
        fos = new FileOutputStream(f);
        res = jdbcTemplate.queryForList("select * from t_blog");

        if ( res != null && res.size() > 0 ){
            StringBuffer sbuf = new StringBuffer();
            Iterator it = res.iterator();
            while( it.hasNext() ){
                Map<String,Object> row = (Map<String, Object>) it.next();
                sbuf.append("insert into t_blog values(");
                sbuf.append("'").append(row.get("title")).append("'");
                sbuf.append(",'").append(row.get("txt")).append("'");
                sbuf.append(",'").append(row.get("dtime")).append("'");
                sbuf.append(",'").append(row.get("img")).append("');").append("\r\n");
                fos.write(sbuf.toString().getBytes());
            }
        }
        fos.flush();
        fos.close();
        sendEmail();

        return "backok";
    }


    public void sendEmail() throws MessagingException {
        String email = backup.getEmail();
        JavaMailSenderImpl mailimpl = new JavaMailSenderImpl();
        mailimpl.setHost("smtp.163.com");
        MimeMessage mailMsg = mailimpl.createMimeMessage();
        MimeMessageHelper msgHelper = new MimeMessageHelper(mailMsg,true,"utf8");
        //set sender,receiver
        msgHelper.setTo(backup.getToemail());
        msgHelper.setFrom(email);
        msgHelper.setSubject("数据库备份");
        msgHelper.setText("<html><head></head><body><h1>数据库备份</h1></body></html>",true);

        msgHelper.addAttachment("study.sql",new File(backup.getSavePath() + File.separator + "study.sql"));
        msgHelper.addAttachment("blog.sql",new File(backup.getSavePath() + File.separator + "blog.sql"));

        mailimpl.setUsername(email);
        mailimpl.setPassword("liubo704");
        Properties prop = new Properties();
        prop.put("mail.smtp.auth",true);
        prop.put("mail.smtp.timeout","25000");

        mailimpl.setJavaMailProperties(prop);
        mailimpl.send(mailMsg);
    }
}
