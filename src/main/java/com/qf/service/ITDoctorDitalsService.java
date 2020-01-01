package com.qf.service;

import com.qf.entity.TDoctorDitals;

public interface ITDoctorDitalsService extends IBaseService<TDoctorDitals>{
    TDoctorDitals getDoctorDitals(String doctorId);
}
