package com.qf.service.impl;

import com.qf.dao.IBaseDao;
import com.qf.entity.TConsignee;
import com.qf.mapper.TConsigneeMapper;
import com.qf.service.ITConsigneeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TConsigneeServiceImpl extends BaseServiceImpl<TConsignee> implements ITConsigneeService{

    @Autowired
    private TConsigneeMapper tConsigneeMapper;

    @Override
    public IBaseDao<TConsignee> getDao() {
        return tConsigneeMapper;
    }

    @Override
    public TConsignee getConsigneeByUserId(Integer userId) {
        return tConsigneeMapper.getConsigneeByUserId(userId);
    }
}
