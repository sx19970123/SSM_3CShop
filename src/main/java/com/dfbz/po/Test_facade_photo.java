package com.dfbz.po;

public class Test_facade_photo {
    private int tpid;
    private int test_id;
    private String test_facade_photo;

    public Test_facade_photo(int tpid, int test_id, String test_facade_photo) {
        this.tpid = tpid;
        this.test_id = test_id;
        this.test_facade_photo = test_facade_photo;
    }

    public Test_facade_photo() {
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

    public String getTest_facade_photo() {
        return test_facade_photo;
    }

    public void setTest_facade_photo(String test_facade_photo) {
        this.test_facade_photo = test_facade_photo;
    }

    @Override
    public String toString() {
        return "Test_facade_photo{" +
                "tpid=" + tpid +
                ", test_id=" + test_id +
                ", test_facade_photo='" + test_facade_photo + '\'' +
                '}';
    }
}
