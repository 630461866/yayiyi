package com.qf.entity;

import java.util.Date;

public class TConsultOrder {
    private Integer id;

    private Integer userId;

    private Integer consultProjectId;

    private String consultProjectName;

    private Integer doctorId;

    private String doctorName;

    private Double orderPrice;

    private String orderNumber;

    private Date orderDate;

    private String orderState;

    public TConsultOrder(){}

    public TConsultOrder(Integer userId, Integer consultProjectId, String consultProjectName, Integer doctorId, String doctorName, Double orderPrice, String orderNumber, Date orderDate, String orderState) {
        this.userId = userId;
        this.consultProjectId = consultProjectId;
        this.consultProjectName = consultProjectName;
        this.doctorId = doctorId;
        this.doctorName = doctorName;
        this.orderPrice = orderPrice;
        this.orderNumber = orderNumber;
        this.orderDate = orderDate;
        this.orderState = orderState;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getConsultProjectId() {
        return consultProjectId;
    }

    public void setConsultProjectId(Integer consultProjectId) {
        this.consultProjectId = consultProjectId;
    }

    public String getConsultProjectName() {
        return consultProjectName;
    }

    public void setConsultProjectName(String consultProjectName) {
        this.consultProjectName = consultProjectName == null ? null : consultProjectName.trim();
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName == null ? null : doctorName.trim();
    }

    public Double getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Double orderPrice) {
        this.orderPrice = orderPrice;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber == null ? null : orderNumber.trim();
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getOrderState() {
        return orderState;
    }

    public void setOrderState(String orderState) {
        this.orderState = orderState == null ? null : orderState.trim();
    }
}