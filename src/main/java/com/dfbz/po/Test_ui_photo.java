package com.dfbz.po;

public class Test_ui_photo {

    private int tpid;
    private int test_id;
    private String test_ui_photo;

    public Test_ui_photo(int tpid, int test_id, String test_ui_photo) {
        this.tpid = tpid;
        this.test_id = test_id;
        this.test_ui_photo = test_ui_photo;
    }

    public Test_ui_photo() {
    }

    public int getTpid() {
        return tpid;
    }

    public void setTpid(int tpid) {
        this.tpid = tpid;
    }

    public int getTest_id() {
        return test_id;
    }

    public void setTest_id(int test_id) {
        this.test_id = test_id;
    }

    public String getTest_ui_photo() {
        return test_ui_photo;
    }

    public void setTest_ui_photo(String test_ui_photo) {
        this.test_ui_photo = test_ui_photo;
    }

    @Override
    public String toString() {
        return "Test_ui_photo{" +
                "tpid=" + tpid +
                ", test_id=" + test_id +
                ", test_ui_photo='" + test_ui_photo + '\'' +
                '}';
    }
}
