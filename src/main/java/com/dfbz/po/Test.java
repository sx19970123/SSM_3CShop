package com.dfbz.po;

public class Test {
    private int commodity_id;
    private int test_id;
    private String test_facade_body;
    private String test_ui_body;
    private String test_ui_photo;
    private String test_property_body;
    private String test_photo_body;
    private String test_over_body;
    private String test_over_photo;
    private String commodity_name;
    private String commodity_brand;

    public Test(int commodity_id, int test_id, String test_facade_body, String test_ui_body, String test_ui_photo, String test_property_body, String test_photo_body, String test_over_body, String test_over_photo, String commodity_name, String commodity_brand) {
        this.commodity_id = commodity_id;
        this.test_id = test_id;
        this.test_facade_body = test_facade_body;
        this.test_ui_body = test_ui_body;
        this.test_ui_photo = test_ui_photo;
        this.test_property_body = test_property_body;
        this.test_photo_body = test_photo_body;
        this.test_over_body = test_over_body;
        this.test_over_photo = test_over_photo;
        this.commodity_name = commodity_name;
        this.commodity_brand = commodity_brand;
    }

    public Test(int commodity_id, int test_id, String test_facade_body, String test_ui_body, String test_property_body, String test_photo_body, String test_over_body, String test_over_photo) {
        this.commodity_id = commodity_id;
        this.test_id = test_id;
        this.test_facade_body = test_facade_body;
        this.test_ui_body = test_ui_body;
        this.test_property_body = test_property_body;
        this.test_photo_body = test_photo_body;
        this.test_over_body = test_over_body;
        this.test_over_photo = test_over_photo;
    }

    public Test() {
    }

    @Override
    public String toString() {
        return "Test{" +
                "commodity_id=" + commodity_id +
                ", test_id=" + test_id +
                ", test_facade_body='" + test_facade_body + '\'' +
                ", test_ui_body='" + test_ui_body + '\'' +
                ", test_ui_photo='" + test_ui_photo + '\'' +
                ", test_property_body='" + test_property_body + '\'' +
                ", test_photo_body='" + test_photo_body + '\'' +
                ", test_over_body='" + test_over_body + '\'' +
                ", test_over_photo='" + test_over_photo + '\'' +
                ", commodity_name='" + commodity_name + '\'' +
                ", commodity_brand='" + commodity_brand + '\'' +
                '}';
    }

    public int getCommodity_id() {
        return commodity_id;
    }

    public void setCommodity_id(int commodity_id) {
        this.commodity_id = commodity_id;
    }

    public int getTest_id() {
        return test_id;
    }

    public void setTest_id(int test_id) {
        this.test_id = test_id;
    }

    public String getTest_facade_body() {
        return test_facade_body;
    }

    public void setTest_facade_body(String test_facade_body) {
        this.test_facade_body = test_facade_body;
    }

    public String getTest_ui_body() {
        return test_ui_body;
    }

    public void setTest_ui_body(String test_ui_body) {
        this.test_ui_body = test_ui_body;
    }

    public String getTest_ui_photo() {
        return test_ui_photo;
    }

    public void setTest_ui_photo(String test_ui_photo) {
        this.test_ui_photo = test_ui_photo;
    }

    public String getTest_property_body() {
        return test_property_body;
    }

    public void setTest_property_body(String test_property_body) {
        this.test_property_body = test_property_body;
    }

    public String getTest_photo_body() {
        return test_photo_body;
    }

    public void setTest_photo_body(String test_photo_body) {
        this.test_photo_body = test_photo_body;
    }

    public String getTest_over_body() {
        return test_over_body;
    }

    public void setTest_over_body(String test_over_body) {
        this.test_over_body = test_over_body;
    }

    public String getTest_over_photo() {
        return test_over_photo;
    }

    public void setTest_over_photo(String test_over_photo) {
        this.test_over_photo = test_over_photo;
    }

    public String getCommodity_name() {
        return commodity_name;
    }

    public void setCommodity_name(String commodity_name) {
        this.commodity_name = commodity_name;
    }

    public String getCommodity_brand() {
        return commodity_brand;
    }

    public void setCommodity_brand(String commodity_brand) {
        this.commodity_brand = commodity_brand;
    }
}
