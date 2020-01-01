package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.dao.IBaseDao;
import com.qf.entity.PageBean;
import com.qf.entity.TMedicalHistory;
import com.qf.entity.TUser;
import com.qf.mapper.TMedicalHistoryMapper;
import com.qf.service.IMedicalHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/20
 */
@Service
public class MedicalHistoryServiceImpl extends BaseServiceImpl<TMedicalHistory> implements IMedicalHistoryService {
    @Autowired
    private TMedicalHistoryMapper medicalHistoryMapper;
    @Override
    public IBaseDao<TMedicalHistory> getDao() {
        return medicalHistoryMapper;
    }

    @Override
    public PageInfo<TMedicalHistory> getmedicallHistoryList(String disease, PageBean pageBean) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TMedicalHistory> medicalHistoryList= medicalHistoryMapper.getmedicallHistoryList(disease);
        return new PageInfo<>(medicalHistoryList);
    }
}
