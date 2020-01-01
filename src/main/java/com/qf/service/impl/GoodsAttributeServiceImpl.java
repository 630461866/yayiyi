package com.qf.service.impl;

import com.qf.dao.IBaseDao;
import com.qf.entity.TGoodsAttribute;
import com.qf.mapper.TGoodsAttributeMapper;
import com.qf.service.IGoodsAttributeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author tancheng
 * @Date 2019/12/19
 */
@Service
public class GoodsAttributeServiceImpl extends BaseServiceImpl<TGoodsAttribute> implements IGoodsAttributeService {
    @Autowired
    private TGoodsAttributeMapper tGoodsAttributeMapper;
    @Override
    public IBaseDao<TGoodsAttribute> getDao() {
        return tGoodsAttributeMapper;
    }

    @Override
    public List<TGoodsAttribute> getGoodsTypeList() {
        return tGoodsAttributeMapper.getGoodsTypeList();
    }

    @Override
    public List<TGoodsAttribute> getGoodsBrandList() {
        return tGoodsAttributeMapper.getGoodsBrandList();
    }

    @Override
    public List<TGoodsAttribute> getGoodsBrandListByTypeId(Integer id) {
        return tGoodsAttributeMapper.getGoodsBrandListByTypeId(id);
    }

    @Override
    public List<TGoodsAttribute> getGoodsBrandListByBrandId(Integer id) {
        return tGoodsAttributeMapper.getGoodsBrandListByBrandId(id);
    }

    @Override
    public List<TGoodsAttribute> getGoodsTypeListByTypeId(Integer id) {
        return tGoodsAttributeMapper.getGoodsTypeListByTypeId(id);
    }

    @Override
    public List<TGoodsAttribute> getGoodsTypeListByBrandId(Integer id,Integer bigTypeId) {
        return tGoodsAttributeMapper.getGoodsTypeListByBrandId(id,bigTypeId);
    }

    @Override
    public List<TGoodsAttribute> getGoodsTypeListByBigTypeId(Integer bigTypeId) {
        return tGoodsAttributeMapper.getGoodsTypeListByBigTypeId(bigTypeId);
    }

    @Override
    public List<TGoodsAttribute> getGoodsBrandListFour() {
        return tGoodsAttributeMapper.getGoodsBrandListFour();
    }

    @Override
    public List<TGoodsAttribute> getGoodsTypeNameById(Integer attributeId) {
        return tGoodsAttributeMapper.getGoodsTypeNameById(attributeId);
    }

    @Override
    public List<TGoodsAttribute> getGoodsBrandListTwo() {
        return tGoodsAttributeMapper.getGoodsBrandListTwo();
    }

    @Override
    public List<TGoodsAttribute> getGoodsBrandListThree() {
        return tGoodsAttributeMapper.getGoodsBrandListThree();
    }
}
