package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.dao.IBaseDao;
import com.qf.entity.PageBean;
import com.qf.entity.TConsultOrder;
import com.qf.entity.TGoods;
import com.qf.mapper.TConsultOrderMapper;
import com.qf.service.ITConsultOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TConsultOrderImpl extends BaseServiceImpl<TConsultOrder> implements ITConsultOrderService{

    @Autowired
    private TConsultOrderMapper consultOrderMapper;

    @Override
    public IBaseDao<TConsultOrder> getDao() {
        return consultOrderMapper;
    }




    @Override
    public int addConsultOrder(TConsultOrder consultOrder) {
        return consultOrderMapper.addConsultOrder(consultOrder);
    }

    @Override
    public List<TConsultOrder> getConsultantOrderList(Integer userId) {
        return consultOrderMapper.getConsultantOrderList(userId);
    }

    @Override
    public TConsultOrder getConsultantOrderByOrderId(Integer ordeId) {
        return consultOrderMapper.getConsultantOrderByOrderId(ordeId);
    }

    @Override
    public void changeOrder(Integer orderId) {
        consultOrderMapper.changeOrder(orderId);
    }

    @Override
    public PageInfo<TConsultOrder> getConsultantOrderListinfo(String doctorName, PageBean pageBean) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TConsultOrder> ConsultantOrder= consultOrderMapper.getConsultantOrderListinfo(doctorName);
        return new PageInfo<>(ConsultantOrder);
    }
}
