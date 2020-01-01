package com.qf.entity;

public class TChange {
    private Integer id;

    private String orderNumber;

    private String resouces;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber == null ? null : orderNumber.trim();
    }

    public String getResouces() {
        return resouces;
    }

    public void setResouces(String resouces) {
        this.resouces = resouces == null ? null : resouces.trim();
    }
}