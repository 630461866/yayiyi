package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TGoodsOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TGoodsOrderMapper extends IBaseDao<TGoodsOrder> {
    int deleteByPrimaryKey(Integer id);

    int insert(TGoodsOrder record);

    int insertSelective(TGoodsOrder record);

    TGoodsOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TGoodsOrder record);

    int updateByPrimaryKey(TGoodsOrder record);

    List<TGoodsOrder> getgoodsPageList();

    List<TGoodsOrder> getgoodsOrderList(String goodsName);

    TGoodsOrder getGoodsOrderById(int id);


    int addGoodsOrder(TGoodsOrder goodsOrder);

    List<TGoodsOrder> findOrderByUserId(Integer userId);

    int updatePrice(@Param("totallGoodsPrice") Double totallGoodsPrice,@Param("number") String number);

    int deleteOrder(String orderNumber);

    TGoodsOrder orderByOrderNumber(String orderNumber);

    int updateOrderState(String orderNumber);
}