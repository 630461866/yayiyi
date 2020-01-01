package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.entity.PageBean;
import com.qf.entity.TConsultProject;
import com.qf.entity.TDoctor;
import com.qf.entity.TUser;
import com.qf.mapper.TConsultProjectMapper;
import com.qf.service.IConsultRrojectService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author: zhangjia
 * @Date:2019/12/20
 */
@Controller
@RequestMapping("consultProject")
public class ConsultProjectController {
    @Autowired
    private IConsultRrojectService consultRrojectService;

    @RequestMapping("consulprojjectlist")
    public String consulprojjectlist(String projectName, PageBean pageBean, ModelMap map){
        PageInfo<TConsultProject> pageInfo= consultRrojectService.consulprojjectlist(projectName,pageBean);
        map.put("projectName",projectName);
        map.put("pageInfo",pageInfo);
        map.put("url","consultProject/consulprojjectlist");
        //把userName转成json数据
        //{"userName":"a"}
        Gson gson = new Gson();
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("projectName",projectName);
        map.put("params",gson.toJson(paramMap));
        return "application/consulproject/consultorijectlist";
    }
    @RequiresPermissions(value = "project:add")
    @RequestMapping("toadd")
    public String addinfo(TDoctor doctor){
        return "application/consulproject/consultprojectAdd";
    }
    @RequestMapping("toUpdate/{id}")
    public String toUpdateDoctor(@PathVariable int id, ModelMap map){
        TConsultProject consultProject = consultRrojectService.getconsultProjectById(id);
        map.put("consultProject",consultProject);
        return "application/consulproject/consultprojectUpdate";
    }
    //添加功能
    @RequestMapping("addinfo")
    public String addinfo(TConsultProject consultProject){
        consultRrojectService.addinfo(consultProject);
        return "application/consulproject/consultorijectlist";
    }
    @RequestMapping("deleteproject")
    public String deleteproject(int id){
        consultRrojectService.deleteproject(id);
        return "application/consulproject/consultorijectlist";
    }
}
