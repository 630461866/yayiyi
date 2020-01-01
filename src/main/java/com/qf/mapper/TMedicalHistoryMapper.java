package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TMedicalHistory;

import java.util.List;

public interface TMedicalHistoryMapper extends IBaseDao<TMedicalHistory> {
    int deleteByPrimaryKey(Integer id);

    int insert(TMedicalHistory record);

    int insertSelective(TMedicalHistory record);

    TMedicalHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TMedicalHistory record);

    int updateByPrimaryKey(TMedicalHistory record);

    List<TMedicalHistory> getmedicallHistoryList(String disease);

    int addMedicalHistory(TMedicalHistory medicalHistory);

    TMedicalHistory getMedicalHistory(Integer infomationId);
}