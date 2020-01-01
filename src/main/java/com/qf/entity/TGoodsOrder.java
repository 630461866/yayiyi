package com.qf.entity;

import java.math.BigDecimal;
import java.util.Date;

public class TGoodsOrder {
    private Integer id;

    private Integer goodsId;

    private Integer userId;

    private Double orderPrice;

    private Date orderDate;

    private String orderStatus;

    private String orderNumber;

    private String orderPicture;

    private String goodsName;

    private Double orderTotalPrice;

    private int count;

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public TGoodsOrder() {
    }

    public TGoodsOrder(Integer goodsId, Integer userId, Double orderPrice, Date orderDate, String orderStatus, String orderNumber, String orderPicture, String goodsName) {
        this.goodsId = goodsId;
        this.userId = userId;
        this.orderPrice = orderPrice;
        this.orderDate = orderDate;
        this.orderStatus = orderStatus;
        this.orderNumber = orderNumber;
        this.orderPicture = orderPicture;
        this.goodsName = goodsName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Double getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Double orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus == null ? null : orderStatus.trim();
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber == null ? null : orderNumber.trim();
    }

    public String getOrderPicture() {
        return orderPicture;
    }

    public void setOrderPicture(String orderPicture) {
        this.orderPicture = orderPicture == null ? null : orderPicture.trim();
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public Double getOrderTotalPrice() {
        return orderTotalPrice;
    }

    public void setOrderTotalPrice(Double orderTotalPrice) {
        this.orderTotalPrice = orderTotalPrice;
    }

    //得到单个商品的总价
    public double getDanPrice(){

        //得到单个商品的单价
        BigDecimal priceOff = new BigDecimal(String.valueOf(this.getOrderTotalPrice()));

        //得到数量
        BigDecimal count = new BigDecimal(String.valueOf(this.getCount()));

        //得到单个商品总价
        BigDecimal danPrice = priceOff.multiply(count);

        return danPrice.doubleValue();
    }

}