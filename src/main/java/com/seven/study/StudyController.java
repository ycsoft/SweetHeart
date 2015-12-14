package com.seven.study;

import com.seven.auth.LoginController;
import com.seven.model.TStudy;
import com.seven.service.StudyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

/**
 * Created by Seven Yang on 2015/12/5.
 */
@Controller
@SessionAttributes("usr")
public class StudyController {

    @Resource(name = "studyService")
    private StudyService studyService;
    @RequestMapping("/savestudy")
    public ModelAndView saveStudy(TStudy s,Model mod) throws UnsupportedEncodingException {

        if (! LoginController.isLogined(mod)){
            return new ModelAndView("login");
        }
        studyService.saveStudy(s.getTitle(),s.getData());
        ModelAndView md = new ModelAndView("home");
        return md;
    }
    @RequestMapping(value = "/study")
    public ModelAndView listStudy(Model mod){

        if(!LoginController.isLogined(mod)){
            return new ModelAndView("login");
        }
        List<Map<String,Object>> list = studyService.listStudy();
        ModelAndView md = new ModelAndView("study");
        md.addObject("list",list);
        return md;
    }
    @RequestMapping(value = "/viewstudy")
    public ModelAndView viewStudy(String title,Model mod) throws UnsupportedEncodingException {

        if(!LoginController.isLogined(mod)){
            return new ModelAndView("login");
        }
        ModelAndView md = new ModelAndView("studyView");
        title = new String(title.getBytes("ISO-8859-1"),"utf8");
        md.addObject("title",title);
        Map<String,Object> res = studyService.getDataByTitle(title);
        String data = (String) res.get("txt");

        md.addObject("data",res.get("txt"));
        return md;
    }
}
