package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TDoctorDitals;

public interface TDoctorDitalsMapper extends IBaseDao<TDoctorDitals>{
    int deleteByPrimaryKey(Integer id);

    int insert(TDoctorDitals record);

    int insertSelective(TDoctorDitals record);

    TDoctorDitals selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TDoctorDitals record);

    int updateByPrimaryKey(TDoctorDitals record);

    TDoctorDitals getDoctorDitals(String doctorId);
}