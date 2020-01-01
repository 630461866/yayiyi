package com.qf.service;

import com.qf.entity.TDoctor;

import java.util.List;

public interface ITDoctorService extends IBaseService<TDoctor>{


    List<TDoctor> getDoctorById(Integer id);


    TDoctor getDoctorByDoctorId(Integer doctorId);

    List<TDoctor> getDoctorInfo(String departments);
}
