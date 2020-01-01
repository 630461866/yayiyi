package com.qf.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qf.dao.IBaseDao;
import com.qf.entity.PageBean;
import com.qf.entity.TGoods;
import com.qf.entity.TGoodsOrder;
import com.qf.mapper.TGoodsMapper;
import com.qf.mapper.TGoodsOrderMapper;
import com.qf.service.IGoodsOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: zhangjia
 * @Date:2019/12/19
 */
@Service
public class GoodsOrderServiceImpl extends BaseServiceImpl<TGoodsOrder> implements IGoodsOrderService {
    @Autowired
    private TGoodsOrderMapper tGoodsOrderMapper;

    @Autowired
    private TGoodsMapper tGoodsMapper;
    @Override
    public IBaseDao<TGoodsOrder> getDao() {
        return tGoodsOrderMapper;
    }

    @Override
    public PageInfo<TGoodsOrder> getgoodsPageList(PageBean pageBean) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TGoodsOrder> goodsOrderList= tGoodsOrderMapper.getgoodsPageList();
        return new PageInfo<>(goodsOrderList);
    }

    @Override
    public PageInfo<TGoodsOrder> getgoodsOrderList(String goodsName, PageBean pageBean) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TGoodsOrder> doctorlist= tGoodsOrderMapper.getgoodsOrderList(goodsName);
        return new PageInfo<>(doctorlist);
    }

    @Override
    public TGoodsOrder getGoodsOrderById(int id) {
        return tGoodsOrderMapper.getGoodsOrderById(id);
    }

    @Override
    public List<TGoods> getGoodsList() {
        return tGoodsMapper.getGoodsList();
    }

    @Override
    public List<TGoods> getGoodsListByTypeId(Integer id) {
        return tGoodsMapper.getGoodsListByTypeId(id);
    }

    @Override
    public List<TGoods> getGoodsListByBrandId(Integer id) {
        return tGoodsMapper.getGoodsListByBrandId(id);
    }

    @Override
    public List<TGoods> getGoodsListFour() {
        return tGoodsMapper.getGoodsListFour();
    }

    @Override
    public List<TGoods> getGoodsDetailsListByGoodsId(Integer goodsId) {
        return tGoodsMapper.getGoodsDetailsListByGoodsId(goodsId);
    }

    @Override
    public List<TGoods> getGoodsListTwo() {
        return tGoodsMapper.getGoodsListTwo();
    }

    @Override
    public List<TGoods> getGoodsListThree() {
        return tGoodsMapper.getGoodsListThree();
    }

    @Override
    public TGoods getGoodById(Integer goodsId) {
        return tGoodsMapper.getGoodById(goodsId);
    }

    @Override
    public PageInfo<TGoods> getGoodslist(String goodsName, PageBean pageBean) {
        PageHelper.startPage(pageBean.getCurrentPage(),pageBean.getPageSize());
        List<TGoods> goodslistinfo= tGoodsMapper.getGoodslist(goodsName);
        return new PageInfo<>(goodslistinfo);
    }

    @Override
    public void addGoodsOrder(TGoodsOrder goodsOrder) {
        tGoodsOrderMapper.addGoodsOrder(goodsOrder);
    }

    @Override
    public List<TGoodsOrder> findOrderByUserId(Integer userId) {
        return tGoodsOrderMapper.findOrderByUserId(userId);
    }

    @Override
    public void updatePrice(Double totallGoodsPrice,String number) {
        tGoodsOrderMapper.updatePrice(totallGoodsPrice,number);
    }

    @Override
    public void deleteOrder(String orderNumber) {
        tGoodsOrderMapper.deleteOrder(orderNumber);
    }

    @Override
    public TGoodsOrder orderByOrderNumber(String orderNumber) {
        return tGoodsOrderMapper.orderByOrderNumber(orderNumber);
    }

    @Override
    public void updateOrderState(String orderNumber) {
        tGoodsOrderMapper.updateOrderState(orderNumber);
    }
}
