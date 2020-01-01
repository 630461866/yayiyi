package com.qf.entity;

public class TMedicalHistory {
    private Integer id;

    private Integer consultInformationId;

    private String disease;

    private String hospital;

    private String treatmentWay;

    private String attendDoctor;

    public TMedicalHistory(){}

    public TMedicalHistory(Integer consultInformationId, String disease, String hospital, String treatmentWay, String attendDoctor) {
        this.consultInformationId = consultInformationId;
        this.disease = disease;
        this.hospital = hospital;
        this.treatmentWay = treatmentWay;
        this.attendDoctor = attendDoctor;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getConsultInformationId() {
        return consultInformationId;
    }

    public void setConsultInformationId(Integer consultInformationId) {
        this.consultInformationId = consultInformationId;
    }

    public String getDisease() {
        return disease;
    }

    public void setDisease(String disease) {
        this.disease = disease == null ? null : disease.trim();
    }

    public String getHospital() {
        return hospital;
    }

    public void setHospital(String hospital) {
        this.hospital = hospital == null ? null : hospital.trim();
    }

    public String getTreatmentWay() {
        return treatmentWay;
    }

    public void setTreatmentWay(String treatmentWay) {
        this.treatmentWay = treatmentWay == null ? null : treatmentWay.trim();
    }

    public String getAttendDoctor() {
        return attendDoctor;
    }

    public void setAttendDoctor(String attendDoctor) {
        this.attendDoctor = attendDoctor == null ? null : attendDoctor.trim();
    }
}