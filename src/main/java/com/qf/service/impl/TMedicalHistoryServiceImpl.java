package com.qf.service.impl;

import com.qf.dao.IBaseDao;
import com.qf.entity.TMedicalHistory;
import com.qf.mapper.TMedicalHistoryMapper;
import com.qf.service.ITMedicalHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TMedicalHistoryServiceImpl extends BaseServiceImpl<TMedicalHistory> implements ITMedicalHistoryService{

    @Autowired
    private TMedicalHistoryMapper medicalHistoryMapper;

    @Override
    public IBaseDao<TMedicalHistory> getDao() {
        return medicalHistoryMapper;
    }

    @Override
    public void addMedicalHistory(TMedicalHistory medicalHistory) {
        medicalHistoryMapper.addMedicalHistory(medicalHistory);
    }

    @Override
    public TMedicalHistory getMedicalHistory(Integer infomationId) {
        return medicalHistoryMapper.getMedicalHistory(infomationId);
    }
}
