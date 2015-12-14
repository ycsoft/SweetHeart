package com.seven.blog;

import com.seven.auth.LoginController;
import com.seven.model.TBlog;
import com.seven.service.BlogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

/**
 * Created by Seven Yang on 2015/12/6.
 */
@Controller
@SessionAttributes("usr")
public class BlogController {
    @Resource(name = "blogService")
    private BlogService blogService;
    @RequestMapping(value = "/blog")
    public ModelAndView blog(Model mod){
        if(!LoginController.isLogined(mod)){
            return new ModelAndView("login");
        }
        ModelAndView md = new ModelAndView("blog");

        List<Map<String,Object>> list = blogService.listBlog();
        if ( list == null || list.size() == 0){

        }else{
            md.addObject("list",list);
        }

        return md;
    }

    @RequestMapping(value = "/addblog", method = RequestMethod.POST)
    public String addBlog(TBlog blog,Model md) throws UnsupportedEncodingException {
        if(!LoginController.isLogined(md)){
            return "login";
        }
        blogService.saveBlog(blog);
        return "redirect:/blog";
    }

    @RequestMapping(value = "/blogview")
    public ModelAndView blogview(String title,Model mod) throws UnsupportedEncodingException {

        if ( !LoginController.isLogined(mod)){
            return new ModelAndView("login");
        }
        ModelAndView md = new ModelAndView("studyView");
        title = new String(title.getBytes("ISO-8859-1"),"utf-8");
        TBlog blog = blogService.queryBlog(title);
        md.addObject("title",title);
        md.addObject("data",blog.getData());
        return md;
    }

}
