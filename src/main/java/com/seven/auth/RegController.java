package com.seven.auth;

import com.seven.model.TUser;
import com.seven.service.UserServ;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by Seven Yang on 2015/12/3.
 */
@Controller
public class RegController {

    @Resource(name = "userServ")
    private UserServ userServ;
    @RequestMapping( value = "/new", params = "usr")
    public String  jump(@RequestParam(value = "usr") String usr, Model md){

        if ( !LoginController.isLogined(md)){
            return "login";
        }
        if( usr.equals("yang")) {
            return "reg";
        }else{
            return "home";
        }
    }

    @RequestMapping( value = "/new")
    public String jump(){
        return "home";
    }

    @RequestMapping("/save")
    public ModelAndView save(TUser info,Model md){
        if (! LoginController.isLogined(md)){
            return new ModelAndView("login");
        }
        ModelAndView mv = new ModelAndView("regOk");
        mv.addObject("info",info.getName());
        userServ.SaveUser(info.getName(),info.getPwd());
        return mv;
    }
}
