package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TDepartments;
import com.qf.entity.TDoctor;

import java.util.List;


public interface TDepartmentsMapper extends IBaseDao<TDepartments> {
    int deleteByPrimaryKey(Integer id);

    int insert(TDepartments record);

    int insertSelective(TDepartments record);

    TDepartments selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TDepartments record);

    int updateByPrimaryKey(TDepartments record);

    List<TDepartments> departmentslist(String departmentName);

    TDepartments getDepartmentsById(int id);
}