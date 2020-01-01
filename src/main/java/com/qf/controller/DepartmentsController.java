package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.entity.PageBean;
import com.qf.entity.TDepartments;
import com.qf.service.IdepartmentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author: zhangjia
 * @Date:2019/12/21
 */
@Controller
@RequestMapping("departments")
public class DepartmentsController {
    @Autowired
    private IdepartmentsService departmentsService;

    @RequestMapping("departmentslist")
    public String departmentslist(String departmentName, PageBean pageBean, ModelMap map){
        PageInfo<TDepartments> pageInfo= departmentsService.departmentslist(departmentName,pageBean);
        map.put("departmentName",departmentName);
        map.put("pageInfo",pageInfo);
        map.put("url","departments/departmentslist");
        //把userName转成json数据
        //{"userName":"a"}
        Gson gson = new Gson();
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("departmentName",departmentName);
        map.put("params",gson.toJson(paramMap));
        return "application/departments/departmentslist";
    }
    @RequestMapping("toUpdate/{id}")
    public String toUpdateDepartments(@PathVariable int id, ModelMap map){
        TDepartments departments = departmentsService.getDepartmentsById(id);
        map.put("departments",departments);
        return "application/departments/departmentsUpdate";
    }
}
