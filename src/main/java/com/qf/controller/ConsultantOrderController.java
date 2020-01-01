package com.qf.controller;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.qf.entity.*;
import com.qf.service.ITConsultInfomationService;
import com.qf.service.ITConsultOrderService;
import com.qf.service.ITMedicalHistoryService;
import com.qf.service.ITUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Controller
@RequestMapping("personal")
public class ConsultantOrderController {

    @Autowired
    private ITConsultOrderService consultOrderService;

    @Autowired
    private ITConsultInfomationService consultInfomationService;

    @Autowired
    private ITMedicalHistoryService medicalHistoryService;

    //咨询订单信息展示
    @RequestMapping("consultantorderlist")
    public String consultantorderlist(ModelMap map,String doctorName, PageBean pageBean){
        PageInfo<TConsultOrder> pageInfo= consultOrderService.getConsultantOrderListinfo(doctorName,pageBean);
        map.put("doctorName",doctorName);
        map.put("pageInfo",pageInfo);
        map.put("url","personal/consultantorderlist");
        //把userName转成json数据
        //{"userName":"a"}
        Gson gson = new Gson();
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("doctorName",doctorName);
        map.put("params",gson.toJson(paramMap));
        return "application/consultorder/consultorderlist";
    }

    //咨询信息展示
    @RequestMapping("consultantinfomationlist")
    public String consultantinfomationlist(ModelMap map,String consultPurpose, PageBean pageBean){
        PageInfo<TConsultInfomation> pageInfo= consultInfomationService.consultantinfomationlist(consultPurpose,pageBean);
        map.put("consultPurpose",consultPurpose);
        map.put("pageInfo",pageInfo);
        map.put("url","personal/consultantinfomationlist");
        //把userName转成json数据
        //{"userName":"a"}
        Gson gson = new Gson();
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("consultPurpose",consultPurpose);
        map.put("params",gson.toJson(paramMap));
        return "application/consultorder/consultantinfomationlist";
    }

    @RequestMapping("consultantOrder")
    public String consultantOrderList(ModelMap map, HttpServletRequest request){

        //拿用户id
        TUser tUser = (TUser) request.getSession().getAttribute("tUser");
        Integer userId = tUser.getId();

        List<TConsultOrder> consultOrderList =  consultOrderService.getConsultantOrderList(userId);
        map.put("consultOrderList",consultOrderList);
        return "personalConsulOrder";
    }


    @RequestMapping("consultantDetail")
    public String consultantDetail(String orderId,String projectName,HttpServletRequest request,ModelMap map){



        map.put("projectName",projectName);

        //拿用户对象
        TUser user = (TUser) request.getSession().getAttribute("tUser");
        Integer userId = user.getId();
        //拼接出地址
        String province = user.getProvince();
        String city = user.getCity();
        String county = user.getCounty();

        List<String> list = new ArrayList<>();

        list.add(province);
        list.add(city);
        list.add(county);

        StringBuilder stringBuilder = new StringBuilder();

        for (String str : list) {
            stringBuilder.append(str);
        }

        String location = stringBuilder.toString();
        map.put("location",location);
        map.put("user",user);

        Integer ordeId = Integer.parseInt(orderId);
        TConsultOrder consultOrder  =  consultOrderService.getConsultantOrderByOrderId(ordeId);
        Date orderDate = consultOrder.getOrderDate();
        map.put("orderDate",orderDate);

        //通过订单id拿到一个具体的发病经历对象
        TConsultInfomation infomation = consultInfomationService.getInfomation(ordeId);

        map.put("infomation",infomation);

        Integer infomationId = infomation.getId();

        //通过发病经历的id拿到病史对象
        TMedicalHistory medicalHistory = medicalHistoryService.getMedicalHistory(infomationId);

        map.put("medicalHistory",medicalHistory);

        return  "personalConsulOrderCheck";
    }

    @RequestMapping("consulOrderPay")
    public String consulOrderPay(String projectName , Double orderPrice , Integer orderId,ModelMap map){
        map.put("projectName",projectName);
        map.put("orderPrice",orderPrice);
        map.put("orderId",orderId);
        return "personalConsulOrderPay";
    }

    @RequestMapping("paySuccess")
    public String consulOrderPaySuccess(Integer orderId){

        System.out.println(orderId);

        //通过订单id去改状态,从未支付变成已支付
        consultOrderService.changeOrder(orderId);

        return "personalConsulOrderPaySuccess";
    }

}
