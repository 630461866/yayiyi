package com.qf.service;

import com.qf.entity.TMedicalHistory;

public interface ITMedicalHistoryService extends IBaseService<TMedicalHistory>{
    void addMedicalHistory(TMedicalHistory medicalHistory);

    TMedicalHistory getMedicalHistory(Integer infomationId);
}
