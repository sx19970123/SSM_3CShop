package com.dfbz.po;

public class Commodity {

    private int commodity_id;
    private String commodity_name;
    private int commodity_price;
    private int commodity_category_id;
    private int commodity_brand_id;
    private String commodity_photo1;
    private String commodity_photo2;
    private String commodity_photo3;
    private int commodity_count;
    private String  commodity_category;
    private String commodity_brand;

    public Commodity(int commodity_id, String commodity_name, int commodity_price, int commodity_category_id, int commodity_brand_id, String commodity_describe, String commodity_photo1, String commodity_photo2, String commodity_photo3, int commodity_count, String commodity_category, String commodity_brand) {
        this.commodity_id = commodity_id;
        this.commodity_name = commodity_name;
        this.commodity_price = commodity_price;
        this.commodity_category_id = commodity_category_id;
        this.commodity_brand_id = commodity_brand_id;
        this.commodity_photo1 = commodity_photo1;
        this.commodity_photo2 = commodity_photo2;
        this.commodity_photo3 = commodity_photo3;
        this.commodity_count = commodity_count;
        this.commodity_category = commodity_category;
        this.commodity_brand = commodity_brand;
    }

    public Commodity(String commodity_name, int commodity_price, int commodity_category_id, int commodity_brand_id, String commodity_photo1, String commodity_photo2, String commodity_photo3, int commodity_count, String commodity_category, String commodity_brand) {
        this.commodity_name = commodity_name;
        this.commodity_price = commodity_price;
        this.commodity_category_id = commodity_category_id;
        this.commodity_brand_id = commodity_brand_id;
        this.commodity_photo1 = commodity_photo1;
        this.commodity_photo2 = commodity_photo2;
        this.commodity_photo3 = commodity_photo3;
        this.commodity_count = commodity_count;
        this.commodity_category = commodity_category;
        this.commodity_brand = commodity_brand;
    }

    public Commodity(int commodity_id, String commodity_name, int commodity_price, int commodity_brand_id, String commodity_brand,int commodity_count) {
        this.commodity_id = commodity_id;
        this.commodity_name = commodity_name;
        this.commodity_price = commodity_price;
        this.commodity_brand_id = commodity_brand_id;
        this.commodity_brand = commodity_brand;
        this.commodity_count = commodity_count;
    }

    public Commodity(int commodity_id, String commodity_photo1, String commodity_photo2, String commodity_photo3) {
        this.commodity_id = commodity_id;
        this.commodity_photo1 = commodity_photo1;
        this.commodity_photo2 = commodity_photo2;
        this.commodity_photo3 = commodity_photo3;
    }

    public Commodity(String commodity_name, int commodity_category_id, int commodity_brand_id) {
        this.commodity_name = commodity_name;
        this.commodity_category_id = commodity_category_id;
        this.commodity_brand_id = commodity_brand_id;
    }

    public int getCommodity_id() {
        return commodity_id;
    }

    public void setCommodity_id(int commodity_id) {
        this.commodity_id = commodity_id;
    }

    public String getCommodity_name() {
        return commodity_name;
    }

    public void setCommodity_name(String commodity_name) {
        this.commodity_name = commodity_name;
    }

    public int getCommodity_price() {
        return commodity_price;
    }

    public void setCommodity_price(int commodity_price) {
        this.commodity_price = commodity_price;
    }

    public int getCommodity_category_id() {
        return commodity_category_id;
    }

    public void setCommodity_category_id(int commodity_category_id) {
        this.commodity_category_id = commodity_category_id;
    }

    public int getCommodity_brand_id() {
        return commodity_brand_id;
    }

    public void setCommodity_brand_id(int commodity_brand_id) {
        this.commodity_brand_id = commodity_brand_id;
    }

    public String getCommodity_photo1() {
        return commodity_photo1;
    }

    public void setCommodity_photo1(String commodity_photo1) {
        this.commodity_photo1 = commodity_photo1;
    }

    public String getCommodity_photo2() {
        return commodity_photo2;
    }

    public void setCommodity_photo2(String commodity_photo2) {
        this.commodity_photo2 = commodity_photo2;
    }

    public String getCommodity_photo3() {
        return commodity_photo3;
    }

    public void setCommodity_photo3(String commodity_photo3) {
        this.commodity_photo3 = commodity_photo3;
    }

    public int getCommodity_count() {
        return commodity_count;
    }

    public void setCommodity_count(int commodity_count) {
        this.commodity_count = commodity_count;
    }

    public String getCommodity_category() {
        return commodity_category;
    }

    public void setCommodity_category(String commodity_category) {
        this.commodity_category = commodity_category;
    }

    public String getCommodity_brand() {
        return commodity_brand;
    }

    public void setCommodity_brand(String commodity_brand) {
        this.commodity_brand = commodity_brand;
    }

    public Commodity() {
    }

    @Override
    public String toString() {
        return "Commodity{" +
                "commodity_id=" + commodity_id +
                ", commodity_name='" + commodity_name + '\'' +
                ", commodity_price=" + commodity_price +
                ", commodity_category_id=" + commodity_category_id +
                ", commodity_brand_id=" + commodity_brand_id +
                ", commodity_photo1='" + commodity_photo1 + '\'' +
                ", commodity_photo2='" + commodity_photo2 + '\'' +
                ", commodity_photo3='" + commodity_photo3 + '\'' +
                ", commodity_count=" + commodity_count +
                ", commodity_category='" + commodity_category + '\'' +
                ", commodity_brand='" + commodity_brand + '\'' +
                '}';
    }
}
