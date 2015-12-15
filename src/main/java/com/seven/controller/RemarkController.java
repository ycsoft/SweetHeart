package com.seven.controller;

import com.seven.auth.LoginController;
import com.seven.model.TRemark;
import com.seven.service.RemarkService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by Seven-Yang on 2015/12/14.
 */
@Controller
@SessionAttributes("usr")
public class RemarkController {

    @Resource(name = "remarkService")
    private RemarkService remarkService;
    @RequestMapping(value = "/remark")
    public String listRemark(Model model){
        if (!LoginController.isLogined(model)){
            return "login";
        }
        List<Map<String,Object>> res = remarkService.listRemarks();
        model.addAttribute("list",res);
        return "remark";
    }

    @RequestMapping(value = "/addremark")
    public String addRemark( String title,String txt){
        SimpleDateFormat simpleDateFormat  = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dtime = simpleDateFormat.format(new Date());
        TRemark rmk = new TRemark();
        rmk.setTitle(title);
        rmk.setTxt(txt);
        rmk.setDtime(dtime);
        return "remark";
    }
}
