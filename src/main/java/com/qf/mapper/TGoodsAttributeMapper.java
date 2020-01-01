package com.qf.mapper;

import com.qf.dao.IBaseDao;
import com.qf.entity.TGoodsAttribute;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TGoodsAttributeMapper extends IBaseDao<TGoodsAttribute>{
    List<TGoodsAttribute> getGoodsTypeList();

    List<TGoodsAttribute> getGoodsBrandList();

    List<TGoodsAttribute> getGoodsBrandListByTypeId(Integer id);

    List<TGoodsAttribute> getGoodsBrandListByBrandId(Integer id);

    List<TGoodsAttribute> getGoodsTypeListByTypeId(Integer id);

    List<TGoodsAttribute> getGoodsTypeListByBrandId(@Param("id") Integer id, @Param("bigTypeId") Integer bigTypeId);

    List<TGoodsAttribute> getGoodsTypeListByBigTypeId(Integer bigTypeId);

    List<TGoodsAttribute> getGoodsBrandListFour();

    List<TGoodsAttribute> getGoodsTypeNameById(Integer attributeId);

    List<TGoodsAttribute> getGoodsBrandListTwo();

    List<TGoodsAttribute> getGoodsBrandListThree();
}