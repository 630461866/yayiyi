package com.qf.service;

import com.github.pagehelper.PageInfo;
import com.qf.entity.PageBean;
import com.qf.entity.TGoods;
import com.qf.entity.TGoodsOrder;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/19
 */
public interface IGoodsOrderService extends IBaseService<TGoodsOrder> {
    PageInfo<TGoodsOrder> getgoodsPageList(PageBean pageBean);

    PageInfo<TGoodsOrder> getgoodsOrderList(String goodsName, PageBean pageBean);

    TGoodsOrder getGoodsOrderById(int id);

    List<TGoods> getGoodsList();

    List<TGoods> getGoodsListByTypeId(Integer id);

    List<TGoods> getGoodsListByBrandId(Integer id);

    List<TGoods> getGoodsListFour();

    List<TGoods> getGoodsDetailsListByGoodsId(Integer goodsId);


    List<TGoods> getGoodsListTwo();

    List<TGoods> getGoodsListThree();

    TGoods getGoodById(Integer goodsId);

    PageInfo<TGoods> getGoodslist(String goodsName, PageBean pageBean);

    void addGoodsOrder(TGoodsOrder goodsOrder);

    List<TGoodsOrder> findOrderByUserId(Integer userId);

    void updatePrice(Double totallGoodsPrice,String number);

    void deleteOrder(String orderNumber);

    TGoodsOrder orderByOrderNumber(String orderNumber);

    void updateOrderState(String orderNumber);
}
