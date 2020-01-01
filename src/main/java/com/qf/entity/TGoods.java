package com.qf.entity;

import java.math.BigDecimal;

public class TGoods {
    private Integer goodsId;

    private String goodsName;

    private Integer attributeId;

    private Double goodsPrice;

    private Integer goodsStock;

    private String goodsExplain;

    private String goodsPicture;

    private String goodsPicture1;

    private String goodsPicture2;

    private String goodsPicture3;

    private String goodsPicture4;

    private String goodsComment;

    private int count;

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public Integer getAttributeId() {
        return attributeId;
    }

    public void setAttributeId(Integer attributeId) {
        this.attributeId = attributeId;
    }

    public Double getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Integer getGoodsStock() {
        return goodsStock;
    }

    public void setGoodsStock(Integer goodsStock) {
        this.goodsStock = goodsStock;
    }

    public String getGoodsExplain() {
        return goodsExplain;
    }

    public void setGoodsExplain(String goodsExplain) {
        this.goodsExplain = goodsExplain == null ? null : goodsExplain.trim();
    }

    public String getGoodsPicture() {
        return goodsPicture;
    }

    public void setGoodsPicture(String goodsPicture) {
        this.goodsPicture = goodsPicture == null ? null : goodsPicture.trim();
    }
    public String getGoodsPicture1() {
        return goodsPicture1;
    }

    public void setGoodsPicture1(String goodsPicture1) {
        this.goodsPicture1 = goodsPicture1 == null ? null : goodsPicture1.trim();
    }

    public String getGoodsPicture2() {
        return goodsPicture2;
    }

    public void setGoodsPicture2(String goodsPicture2) {
        this.goodsPicture2 = goodsPicture2 == null ? null : goodsPicture2.trim();
    }

    public String getGoodsPicture3() {
        return goodsPicture3;
    }

    public void setGoodsPicture3(String goodsPicture3) {
        this.goodsPicture3 = goodsPicture3 == null ? null : goodsPicture3.trim();
    }

    public String getGoodsPicture4() {
        return goodsPicture4;
    }

    public void setGoodsPicture4(String goodsPicture4) {
        this.goodsPicture4 = goodsPicture4 == null ? null : goodsPicture4.trim();
    }

    public String getGoodsComment() {
        return goodsComment;
    }

    public void setGoodsComment(String goodsComment) {
        this.goodsComment = goodsComment == null ? null : goodsComment.trim();
    }

    //得到单个商品的总价
    public double getDanPrice(){

        //得到单个商品的单价
        BigDecimal priceOff = new BigDecimal(String.valueOf(this.getGoodsPrice()));

        //得到数量
        BigDecimal count = new BigDecimal(String.valueOf(this.getCount()));

        //得到单个商品总价
        BigDecimal danPrice = priceOff.multiply(count);

        return danPrice.doubleValue();
    }

}