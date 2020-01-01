package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.entity.PageBean;
import com.qf.entity.TUser;
import com.qf.entity.TUserFeedback;
import com.qf.service.ITUserFeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("userFeedback")
public class UserFeedbackController {

    @Autowired
    private ITUserFeedbackService userFeedbackService;

    @RequestMapping("addUserFeedback")
    public String list(String title,String name,String phone,String email,String content){

       TUserFeedback userFeedback = new TUserFeedback(title,name,phone,email,content);
        userFeedbackService.addUserFeedback(userFeedback);
        return "userFeedback";
    }
    @RequestMapping("userFeedbacklist")
    public String userFeedbacklist(String name, PageBean pageBean, ModelMap map){
        PageInfo<TUserFeedback> pageInfo= userFeedbackService.userFeedbacklist(name,pageBean);
        map.put("name",name);
        map.put("pageInfo",pageInfo);
        map.put("url","userFeedback/userFeedbacklist");
        //把userName转成json数据
        //{"userName":"a"}
        Gson gson = new Gson();
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("name",name);
        map.put("params",gson.toJson(paramMap));
        return "application/feedBack/feedBacklist";
    }

}
