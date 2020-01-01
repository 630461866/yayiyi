package com.qf.service.impl;

import com.qf.dao.IBaseDao;
import com.qf.entity.TChange;
import com.qf.mapper.TChangeMapper;
import com.qf.service.ITChangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TChangeServiceImpl extends BaseServiceImpl<TChange> implements ITChangeService{

    @Autowired
    private TChangeMapper tChangeMapper;

    @Override
    public IBaseDao<TChange> getDao() {
        return tChangeMapper;
    }

    @Override
    public void add(String number, String resouce) {
        tChangeMapper.add(number,resouce);
    }
}
