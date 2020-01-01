package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TConsultInfomation;

import java.util.List;

public interface TConsultInfomationMapper extends IBaseDao<TConsultInfomation>{
    int deleteByPrimaryKey(Integer id);

    int insert(TConsultInfomation record);

    int insertSelective(TConsultInfomation record);

    TConsultInfomation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TConsultInfomation record);

    int updateByPrimaryKey(TConsultInfomation record);

    int addConsultInfomation(TConsultInfomation consultInfomation);

    TConsultInfomation getInfomation(Integer orderId);

    List<TConsultInfomation> consultantinfomationlist(String consultPurpose);
}