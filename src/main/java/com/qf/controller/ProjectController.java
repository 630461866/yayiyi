package com.qf.controller;


import com.qf.entity.*;
import com.qf.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("project")
public class ProjectController {

    @Autowired
    private ITConsultProjectService consultProject;

    @Autowired
    private ITDoctorService doctorService;

    @Autowired
    private ITConsultOrderService consultOrderService;

    @Autowired
    private ITConsultInfomationService consultInfomationService;

    @Autowired
    private ITMedicalHistoryService medicalHistoryService;


    @RequestMapping("list")
    public String list(ModelMap map){
        //查询所有的咨询选项
        List<TConsultProject> list = consultProject.getProjectList();

        map.put("list",list);

        return "consultantConsuProject";
    }

    @RequestMapping("selectDoctor")
    public String selectDoctor(String projectName, ModelMap map, HttpServletRequest request){

        TUser tUser = (TUser) request.getSession().getAttribute("tUser");


        if (tUser!=null){
            //得到项目的id
            Integer projectId = consultProject.getProjectId(projectName);
            request.getSession().setAttribute("projectId",projectId);
            //通过项目id，得到该项目id下的所有医生
            List<TDoctor> doctorList = doctorService.getDoctorById(projectId);
            map.put("doctorList",doctorList);
            return "consultantSelectDoctor";
        }

        return "consultantLogin";

    }

    @RequestMapping("addConsultOrder")
    public String addConsultOrder(Integer doctorId,HttpServletRequest request){
        //拿到项目id
        Integer projectId = (Integer) request.getSession().getAttribute("projectId");

        //通过项目id拿这个项目对象
        TConsultProject  project =  consultProject.getPriceById(projectId);

        //通过项目对象拿项目价格和项目名
        Double order_price = project.getPrice();
        String projectName = project.getProjectName();


        //拿用户id
        TUser tUser = (TUser) request.getSession().getAttribute("tUser");
        Integer userId = tUser.getId();

        //通过医生id拿医生对象
        TDoctor doctor = doctorService.getDoctorByDoctorId(doctorId);


        //通过医生对象拿医生名字
        String doctorName = doctor.getDoctorName();

        //状态
        String orderState = "未支付";

        //随机数,订单编号
        String orderNumber = UUID.randomUUID().toString().replace("-", "").substring(0, 10);

        TConsultOrder consultOrder = new TConsultOrder(userId,projectId,projectName,doctorId,doctorName,order_price,orderNumber,new Date(),orderState);

        consultOrderService.addConsultOrder(consultOrder);

        //得到咨询订单的id
        Integer consultOrderId = consultOrder.getId();

        request.getSession().setAttribute("consultOrderId",consultOrderId);



        return  "consultantSubmitMessage";
    }

    @RequestMapping("pay")
    public String pay(HttpServletRequest request, ModelMap map,String startdate,Integer complicationDate,String consultPurpose,
                      String disease,String hospital,String treatmentWay,String attendDoctor) throws ParseException {
        //通过session拿到项目id
        Integer projectId = (Integer) request.getSession().getAttribute("projectId");
        //通过项目id拿具体的项目对象，里面有价格
        TConsultProject  project =  consultProject.getPriceById(projectId);

        map.put("project",project);

        //得到咨询项目的id
        Integer consultOrderId = (Integer) request.getSession().getAttribute("consultOrderId");

        //通过前端传的数据，给发病经历的对象赋值，并且把对象传到数据库去
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate = simpleDateFormat.parse(startdate);

        TConsultInfomation consultInfomation = new TConsultInfomation(consultOrderId,startDate,complicationDate,consultPurpose);
        consultInfomationService.addConsultInfomation(consultInfomation);
        //拿到发病经历的id,给病史表用
        Integer consultInfomationId = consultInfomation.getId();

        TMedicalHistory medicalHistory = new TMedicalHistory(consultInfomationId,disease,hospital,treatmentWay,attendDoctor);
        medicalHistoryService.addMedicalHistory(medicalHistory);



        return "consultantOrderPay";
    }


}
