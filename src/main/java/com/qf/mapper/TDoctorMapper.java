package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TDoctor;

import java.util.List;

public interface TDoctorMapper extends IBaseDao<TDoctor> {
    int deleteByPrimaryKey(Integer doctorId);

    int insert(TDoctor record);

    int insertSelective(TDoctor record);

    TDoctor selectByPrimaryKey(Integer doctorId);

    int updateByPrimaryKeySelective(TDoctor record);

    int updateByPrimaryKey(TDoctor record);

    List<TDoctor> doctorlist(String doctorName);
//此方法名重复，如果出现问题请修改此处
    TDoctor getDoctorByIds(int doctorId);

    //通过项目id查询医生
    List<TDoctor> getDoctorById(Integer project_id);

    //通过医生id查一个医生对象
    TDoctor getDoctorByDoctorId(Integer doctor_id);

    List<TDoctor> getDoctorInfo(String departments);


    void updateDoctor(TDoctor doctor);

    int addinfo(TDoctor doctor);
}