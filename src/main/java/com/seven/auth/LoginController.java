package com.seven.auth;

import com.seven.model.TUser;
import com.seven.service.UserServ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import java.sql.SQLException;
import java.util.Map;

/**
 * Created by Seven Yang on 2015/12/3.
 */
@Controller
@SessionAttributes("usr")
public class LoginController {

    public static String usrName = "";
    @Autowired
    private UserServ userServ;
    @RequestMapping("/auth")
    public String login( TUser info,Model md) throws SQLException {
        String res = null;
        if ( userServ.CheckUser(info.getName(),info.getPwd()) ){
            res = "home";
            usrName = info.getName();
            md.addAttribute("usr",info.getName());
        }else{
            md.addAttribute("usr","");
            res = "login";
        }
        return res;
    }
    @RequestMapping("/logout")
    public String logout(Model md){
        md.addAttribute("usr","");
        return "login";
    }
    public static  boolean isLogined(Model md){
        Map<String,Object> map = md.asMap();
        String usrname = (String) map.get("usr");
        if ( usrname == null || usrname.isEmpty()) {
            return  false;
        }else{
            return true;
        }

    }


}
