package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TConsultOrder;

import java.util.List;

public interface TConsultOrderMapper extends IBaseDao<TConsultOrder>{
    int deleteByPrimaryKey(Integer id);

    int insert(TConsultOrder record);

    int insertSelective(TConsultOrder record);

    TConsultOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TConsultOrder record);

    int updateByPrimaryKey(TConsultOrder record);

    int addConsultOrder(TConsultOrder consultOrder);

    List<TConsultOrder> getConsultantOrderList(Integer userId);

    TConsultOrder getConsultantOrderByOrderId(Integer ordeId);

    int changeOrder(Integer orderId);

    List<TConsultOrder> getConsultantOrderListinfo(String doctorName);
}