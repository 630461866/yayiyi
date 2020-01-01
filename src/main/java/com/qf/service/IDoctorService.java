package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.PageBean;
import com.qf.entity.TDoctor;
import com.qf.entity.TUser;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/19
 */
public interface IDoctorService  extends IBaseService<TDoctor>{
    PageInfo<TDoctor> doctorlist(String doctorName, PageBean pageBean);

    TDoctor getDoctorByIds(int doctorId);

    List<TDoctor> getDoctorInfo(String departments);


    void updateDoctor(TDoctor doctor);

    void addinfo(TDoctor doctor);
}
