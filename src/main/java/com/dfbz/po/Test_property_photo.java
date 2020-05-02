package com.dfbz.po;

public class Test_property_photo {
    private int tpid;
    private int test_id;
    private String test_property_photo;

    public Test_property_photo(int tpid, int test_id, String test_property_photo) {
        this.tpid = tpid;
        this.test_id = test_id;
        this.test_property_photo = test_property_photo;
    }

    public Test_property_photo() {
    }

    @Override
    public String toString() {
        return "Test_property_photo{" +
                "tpid=" + tpid +
                ", test_id=" + test_id +
                ", test_property_photo='" + test_property_photo + '\'' +
                '}';
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

    public String getTest_property_photo() {
        return test_property_photo;
    }

    public void setTest_property_photo(String test_property_photo) {
        this.test_property_photo = test_property_photo;
    }
}
