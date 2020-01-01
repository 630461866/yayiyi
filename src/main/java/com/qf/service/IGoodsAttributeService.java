package com.qf.service;

import com.qf.dao.IBaseDao;
import com.qf.entity.TGoodsAttribute;

import java.util.List;

/**
 * @Author tancheng
 * @Date 2019/12/19
 */
public interface IGoodsAttributeService extends IBaseDao<TGoodsAttribute> {
    List<TGoodsAttribute> getGoodsTypeList();

    List<TGoodsAttribute> getGoodsBrandList();

    List<TGoodsAttribute> getGoodsBrandListByTypeId(Integer id);

    List<TGoodsAttribute> getGoodsBrandListByBrandId(Integer id);

    List<TGoodsAttribute> getGoodsTypeListByTypeId(Integer id);

    List<TGoodsAttribute> getGoodsTypeListByBrandId(Integer id,Integer bigTypeId);

    List<TGoodsAttribute> getGoodsTypeListByBigTypeId(Integer bigTypeId);

    List<TGoodsAttribute> getGoodsBrandListFour();

    List<TGoodsAttribute> getGoodsTypeNameById(Integer attributeId);


    List<TGoodsAttribute> getGoodsBrandListTwo();

    List<TGoodsAttribute> getGoodsBrandListThree();
}
