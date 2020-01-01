package com.qf.service.impl;

import com.qf.dao.IBaseDao;
import com.qf.entity.TDoctorDitals;
import com.qf.mapper.TDoctorDitalsMapper;
import com.qf.service.ITDoctorDitalsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TDoctorDitalsImpl extends BaseServiceImpl<TDoctorDitals> implements ITDoctorDitalsService{

    @Autowired
    private TDoctorDitalsMapper doctorDitalsMapper;

    @Override
    public IBaseDao<TDoctorDitals> getDao() {
        return doctorDitalsMapper;
    }

    @Override
    public TDoctorDitals getDoctorDitals(String doctorId) {
        return doctorDitalsMapper.getDoctorDitals(doctorId);
    }
}
