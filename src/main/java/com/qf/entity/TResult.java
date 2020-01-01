package com.qf.entity;


public class TResult {
    private boolean result;//操作结果，true，表示操作成功，false，表示操作失败
    private String data;//提示信息

    public boolean isResult() {
        return result;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
}
