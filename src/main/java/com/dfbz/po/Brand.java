package com.dfbz.po;

public class Brand {
    private int brand_id;
    private String brand_name;
    private int category_id;

    public Brand(int brand_id, String brand_name, int category_id) {
        this.brand_id = brand_id;
        this.brand_name = brand_name;
        this.category_id = category_id;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public Brand() {
    }

    @Override
    public String toString() {
        return "Brand{" +
                "brand_id=" + brand_id +
                ", brand_name='" + brand_name + '\'' +
                ", category_id=" + category_id +
                '}';
    }
}
