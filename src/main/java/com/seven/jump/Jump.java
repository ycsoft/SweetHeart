package com.seven.jump;

import com.seven.auth.LoginController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.Map;

/**
 * Created by Seven Yang on 2015/12/5.
 */

@Controller
@SessionAttributes("usr")
public class Jump {

    @RequestMapping(value = "/home")
    public String home( Model md){
        if ( !LoginController.isLogined(md) ) {
            return "login";
        }else{
            return "home";
        }
    }
    @RequestMapping(value = "/addStudy")
    public String addStudy(Model md){

        if( !LoginController.isLogined(md)){
            return "login";
        }
        return "addstudy";

    }

    @RequestMapping(value = "/addblog")
    public String addBlog(Model md){
        if( !LoginController.isLogined(md)){
            return "login";
        }
        return "addblog";
    }

    @RequestMapping(value = "/album")
    public String viewAlbum(Model md){
        if ( !LoginController.isLogined(md)){
            return "login";
        }
        return "album";
    }
}
