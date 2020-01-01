package com.qf.entity;

import java.util.Date;

public class TConsultInfomation {
    private Integer id;

    private Integer consultOrderId;

    private Date startDate;

    private Integer complicationDate;

    private String consultPurpose;

    public TConsultInfomation(){}

    public TConsultInfomation(Integer consultOrderId, Date startDate, Integer complicationDate, String consultPurpose) {
        this.consultOrderId = consultOrderId;
        this.startDate = startDate;
        this.complicationDate = complicationDate;
        this.consultPurpose = consultPurpose;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getConsultOrderId() {
        return consultOrderId;
    }

    public void setConsultOrderId(Integer consultOrderId) {
        this.consultOrderId = consultOrderId;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Integer getComplicationDate() {
        return complicationDate;
    }

    public void setComplicationDate(Integer complicationDate) {
        this.complicationDate = complicationDate;
    }

    public String getConsultPurpose() {
        return consultPurpose;
    }

    public void setConsultPurpose(String consultPurpose) {
        this.consultPurpose = consultPurpose == null ? null : consultPurpose.trim();
    }
}