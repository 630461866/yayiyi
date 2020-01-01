package com.qf.entity;

public class TGoodsAttribute {
    private Integer id;

    private String goodsType;

    private String goodsBrand;

    private Integer goodsMark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGoodsType() {
        return goodsType;
    }

    public void setGoodsType(String goodsType) {
        this.goodsType = goodsType == null ? null : goodsType.trim();
    }

    public String getGoodsBrand() {
        return goodsBrand;
    }

    public void setGoodsBrand(String goodsBrand) {
        this.goodsBrand = goodsBrand == null ? null : goodsBrand.trim();
    }

    public Integer getGoodsMark() {
        return goodsMark;
    }

    public void setGoodsMark(Integer goodsMark) {
        this.goodsMark = goodsMark;
    }
}