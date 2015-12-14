package com.seven.controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Seven Yang on 2015/12/6.
 */
@Controller

public class UploadController {

    private String uploadDir;
    @RequestMapping(value = "/upload", method = RequestMethod.GET)
    public String upload(Model md){
        md.addAttribute("info","Hello");
        return "upload";
    }
    @RequestMapping(value = "/upload",method = RequestMethod.POST)
    public ModelAndView upload(HttpServletRequest req, HttpServletResponse resp,Model mod) throws IOException {
        List<String> urls = new ArrayList<String>();
        ModelAndView md = new ModelAndView("addblog");
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload fileUpload = new ServletFileUpload(factory);
        try{
            List items = fileUpload.parseRequest(req);
            Iterator it = items.iterator();
            while ( it.hasNext() ){
                FileItem fi = (FileItem) it.next();
                if (fi.isFormField()){

                }else{
                    if ( fi.getFieldName() != null && !fi.getFieldName().equals("")){
                        String realpath = req.getSession().getServletContext().getRealPath(uploadDir) + File.separator;
                        File tmpFile = new File(realpath + fi.getName());
                        fi.write(tmpFile);
                        urls.add("static/upload/" + fi.getName());
                        md.addObject("url","static/upload/" + fi.getName());
                    }
                }
            }
        }catch ( Exception e){
            e.printStackTrace();
            md.addObject("url","上传出错" );
        }
        return md;
    }

    @RequestMapping(value = "/upload2",method = RequestMethod.POST)
    public String upload2(HttpServletRequest req, HttpServletResponse resp,Model mod) throws IOException {

        List<String> urls = new ArrayList<String>();
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload fileUpload = new ServletFileUpload(factory);
        try{
            List items = fileUpload.parseRequest(req);
            Iterator it = items.iterator();
            while ( it.hasNext() ){
                FileItem fi = (FileItem) it.next();
                if (fi.isFormField()){

                }else{
                    if ( fi.getFieldName() != null && !fi.getFieldName().equals("")){
                        String realpath = req.getSession().getServletContext().getRealPath(uploadDir) + File.separator;
                        File tmpFile = new File(realpath + fi.getName());
                        fi.write(tmpFile);
                        urls.add("static/upload/" + fi.getName());
                    }
                }
            }
        }catch ( Exception e){
            e.printStackTrace();
        }
        mod.addAttribute("list",urls);
        return "uploadok";
    }

    public void setUploadDir(String s){
        uploadDir = s;
    }
    public String getUploadDir(){
        return uploadDir;
    }

}
