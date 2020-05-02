package com.dfbz.po;

public class Test_photo_photo {

    private int tpid;
    private int test_id;
    private String test_photo_photo;

    @Override
    public String toString() {
        return "Test_photo_photo{" +
                "tpid=" + tpid +
                ", test_id=" + test_id +
                ", Test_photo_photo='" + test_photo_photo + '\'' +
                '}';
    }

    public Test_photo_photo(int tpid, int test_id, String test_photo_photo) {
        this.tpid = tpid;
        this.test_id = test_id;
        this.test_photo_photo = test_photo_photo;
    }

    public Test_photo_photo() {
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

    public String getTest_photo_photo() {
        return test_photo_photo;
    }

    public void setTest_photo_photo(String test_photo_photo) {
        this.test_photo_photo = test_photo_photo;
    }
}
