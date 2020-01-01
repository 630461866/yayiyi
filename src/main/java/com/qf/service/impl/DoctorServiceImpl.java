package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.dao.IBaseDao;
import com.qf.entity.PageBean;
import com.qf.entity.TDoctor;
import com.qf.entity.TUser;
import com.qf.mapper.TDoctorMapper;
import com.qf.service.IDoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/19
 */
@Service
public class DoctorServiceImpl  extends BaseServiceImpl<TDoctor> implements IDoctorService {
    @Autowired
    private TDoctorMapper doctorMapper;
    @Override
    public IBaseDao<TDoctor> getDao() {
        return doctorMapper;
    }

    @Override
    public PageInfo<TDoctor> doctorlist(String doctorName, PageBean pageBean) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TDoctor> doctorlist= doctorMapper.doctorlist(doctorName);
        return new PageInfo<>(doctorlist);
    }

    @Override
    public TDoctor getDoctorByIds(int doctorId) {
        return doctorMapper.getDoctorByIds(doctorId);
    }

    @Override
    public List<TDoctor> getDoctorInfo(String departments) {
        return doctorMapper.getDoctorInfo(departments);
    }



    @Override
    public void updateDoctor(TDoctor doctor) {
        doctorMapper.updateDoctor(doctor);
    }

    @Override
    public void addinfo(TDoctor doctor) {
        doctorMapper.addinfo(doctor);
    }
}
