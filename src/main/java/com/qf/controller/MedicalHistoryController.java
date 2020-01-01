package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.entity.PageBean;
import com.qf.entity.TGoodsOrder;
import com.qf.entity.TMedicalHistory;
import com.qf.service.IMedicalHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author: zhangjia
 * @Date:2019/12/20
 */
@Controller
@RequestMapping("medicalHistoryMapper")
public class MedicalHistoryController {

    @Autowired
    private IMedicalHistoryService medicalHistoryService;

    @RequestMapping("medicalHistorylist")
    public String medicalHistorylist(ModelMap map, String disease, PageBean pageBean){
        PageInfo<TMedicalHistory> pageInfo= medicalHistoryService.getmedicallHistoryList(disease,pageBean);
        map.put("disease",disease);
        map.put("pageInfo",pageInfo);
        map.put("url","medicalHistoryMapper/medicalHistorylist");
        //把userName转成json数据
        //{"userName":"a"}
        Gson gson = new Gson();
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("disease",disease);
        map.put("params",gson.toJson(paramMap));
        return "application/medicalHistory/medicalHistorylist";
    }

}
