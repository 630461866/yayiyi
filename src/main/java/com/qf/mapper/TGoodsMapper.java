package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TGoods;

import java.util.List;

public interface TGoodsMapper extends IBaseDao<TGoods>{

    List<TGoods> getGoodsList();

    List<TGoods> getGoodsListByTypeId(Integer id);

    List<TGoods> getGoodsListByBrandId(Integer id);

    List<TGoods> getGoodsListFour();

    List<TGoods> getGoodsDetailsListByGoodsId(Integer goodsId);

    List<TGoods> getGoodsListTwo();

    List<TGoods> getGoodsListThree();

    TGoods getGoodById(Integer goodsId);

    List<TGoods> getGoodslist(String goodsName);

}