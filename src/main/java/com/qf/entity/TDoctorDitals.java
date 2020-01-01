package com.qf.entity;

public class TDoctorDitals {
    private Integer id;

    private Integer doctorId;

    private String doctorditals;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public String getDoctorditals() {
        return doctorditals;
    }

    public void setDoctorditals(String doctorditals) {
        this.doctorditals = doctorditals == null ? null : doctorditals.trim();
    }
}