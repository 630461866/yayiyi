package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.entity.PageBean;
import com.qf.entity.TConsultProject;
import com.qf.entity.TDoctor;
import com.qf.entity.TUser;
import com.qf.service.IDoctorService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: zhangjia
 * @Date:2019/12/19
 */
@Controller
@RequestMapping("doctor")
public class DoctorController {
    @Autowired
    private IDoctorService doctorService;


    @RequestMapping("doctorlist")
    public String doctorlist(String doctorName, PageBean pageBean, ModelMap map){
        PageInfo<TDoctor> pageInfo= doctorService.doctorlist(doctorName,pageBean);
        map.put("doctorName",doctorName);
        map.put("pageInfo",pageInfo);
        map.put("url","doctor/doctorlist");
        //把userName转成json数据
        //{"userName":"a"}
        Gson gson = new Gson();
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("doctorName",doctorName);
        map.put("params",gson.toJson(paramMap));
        return "application/doctor/doctorlist";
    }
    @RequestMapping("toUpdate/{doctorId}")
    public String toUpdateDoctor(@PathVariable int doctorId, ModelMap map){
        TDoctor doctor = doctorService.getDoctorByIds(doctorId);
        map.put("doctor",doctor);
        return "application/doctor/doctorUpdate";
    }

    @RequestMapping("update")
    public String update(TDoctor doctor) {
        doctorService.updateDoctor(doctor);
        return "application/doctor/doctorlist";
    }
    @RequestMapping("toadd")
    public String toadd(TDoctor doctor){
        return "application/doctor/doctorAdd";
    }
    //添加功能
    @RequestMapping("addinfo")
    public String addinfo(TDoctor doctor){
        doctorService.addinfo(doctor);
        return "application/doctor/doctorlist";
    }


    @RequestMapping("info")
    public String consultationDoctorInfo(ModelMap map,String departments){
        List<TDoctor> doctorList = doctorService.getDoctorInfo(departments);
        map.put("doctorList",doctorList);
        if ("2".equals(departments)){
            return "doctorsRecommendTwo";
        }else if ("3".equals(departments)){
            return "doctorsRecommendThree";
        }else if ("4".equals(departments)){
            return "doctorsRecommendFour";
        }
        return "doctorsRecommend";
    }
}
