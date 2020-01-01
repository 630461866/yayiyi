package com.qf.service.impl;

import com.qf.dao.IBaseDao;
import com.qf.entity.TDoctor;
import com.qf.mapper.TDoctorMapper;
import com.qf.service.ITDoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TDoctorServiceImpl extends BaseServiceImpl<TDoctor> implements ITDoctorService{

    @Autowired
    private TDoctorMapper doctorMapper;

    @Override
    public IBaseDao<TDoctor> getDao() {
        return doctorMapper;
    }


    @Override
    public List<TDoctor> getDoctorById(Integer id) {

        return doctorMapper.getDoctorById(id);
    }

    @Override
    public TDoctor getDoctorByDoctorId(Integer doctorId) {
        return doctorMapper.getDoctorByDoctorId(doctorId);
    }

    @Override
    public List<TDoctor> getDoctorInfo(String departments) {
        return doctorMapper.getDoctorInfo(departments);
    }
}
