package com.qf.controller;


import com.qf.entity.TDoctorDitals;
import com.qf.service.ITDoctorDitalsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ditals")
public class DoctorDitalsController {

    @Autowired
    private ITDoctorDitalsService doctorDitalsService;

    @RequestMapping("doctor")
    public String doctorDitals(String doctorId, ModelMap map){


        TDoctorDitals doctor =  doctorDitalsService.getDoctorDitals(doctorId);

        String doctorDitals = doctor.getDoctorditals();

        map.put("doctorDitals",doctorDitals);

        return "doctorDitals";
    }

}
