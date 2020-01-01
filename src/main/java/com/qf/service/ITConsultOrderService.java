package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.PageBean;
import com.qf.entity.TConsultOrder;
import com.qf.entity.TGoods;

import java.util.List;

public interface ITConsultOrderService extends IBaseService<TConsultOrder> {


    int addConsultOrder(TConsultOrder consultOrder);

    List<TConsultOrder> getConsultantOrderList(Integer userId);

    TConsultOrder getConsultantOrderByOrderId(Integer ordeId);

    void changeOrder(Integer orderId);

    PageInfo<TConsultOrder> getConsultantOrderListinfo(String doctorName, PageBean pageBean);
}
