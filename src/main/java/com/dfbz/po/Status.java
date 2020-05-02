package com.dfbz.po;

import java.math.BigInteger;

public class Status {
    private int user_id;
    private String commodity_name;
    private int commodity_id;
    private String commodity_photo1;
    private String commodity_brand;
    private String disk;
    private int price;
    private String color;
    private int state;
    private BigInteger user_phone;
    private String address;
    private String name;
    private String courier_num;
    private String status_id;
    private int color_id;
    private int address_id;

    public Status(int user_id, int commodity_id, String disk, int state, int color_id, int address_id) {
        this.user_id = user_id;
        this.commodity_id = commodity_id;
        this.disk = disk;
        this.state = state;
        this.color_id = color_id;
        this.address_id = address_id;
    }

    public Status() {
    }

    @Override
    public String toString() {
        return "Status{" +
                "user_id=" + user_id +
                ", commodity_name='" + commodity_name + '\'' +
                ", commodity_id=" + commodity_id +
                ", commodity_photo1='" + commodity_photo1 + '\'' +
                ", commodity_brand='" + commodity_brand + '\'' +
                ", disk='" + disk + '\'' +
                ", price=" + price +
                ", color='" + color + '\'' +
                ", state=" + state +
                ", user_phone=" + user_phone +
                ", address='" + address + '\'' +
                ", name='" + name + '\'' +
                ", courier_num='" + courier_num + '\'' +
                ", status_id='" + status_id + '\'' +
                ", color_id=" + color_id +
                ", address_id=" + address_id +
                '}';
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getCommodity_name() {
        return commodity_name;
    }

    public void setCommodity_name(String commodity_name) {
        this.commodity_name = commodity_name;
    }

    public int getCommodity_id() {
        return commodity_id;
    }

    public void setCommodity_id(int commodity_id) {
        this.commodity_id = commodity_id;
    }

    public String getCommodity_photo1() {
        return commodity_photo1;
    }

    public void setCommodity_photo1(String commodity_photo1) {
        this.commodity_photo1 = commodity_photo1;
    }

    public String getCommodity_brand() {
        return commodity_brand;
    }

    public void setCommodity_brand(String commodity_brand) {
        this.commodity_brand = commodity_brand;
    }

    public String getDisk() {
        return disk;
    }

    public void setDisk(String disk) {
        this.disk = disk;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public BigInteger getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(BigInteger user_phone) {
        this.user_phone = user_phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCourier_num() {
        return courier_num;
    }

    public void setCourier_num(String courier_num) {
        this.courier_num = courier_num;
    }

    public String getStatus_id() {
        return status_id;
    }

    public void setStatus_id(String status_id) {
        this.status_id = status_id;
    }

    public int getColor_id() {
        return color_id;
    }

    public void setColor_id(int color_id) {
        this.color_id = color_id;
    }

    public int getAddress_id() {
        return address_id;
    }

    public void setAddress_id(int address_id) {
        this.address_id = address_id;
    }

    public Status(int user_id, String commodity_name, int commodity_id, String commodity_photo1, String commodity_brand, String disk, int price, String color, int state, BigInteger user_phone, String address, String name, String courier_num, String status_id, int color_id, int address_id) {
        this.user_id = user_id;
        this.commodity_name = commodity_name;
        this.commodity_id = commodity_id;
        this.commodity_photo1 = commodity_photo1;
        this.commodity_brand = commodity_brand;
        this.disk = disk;
        this.price = price;
        this.color = color;
        this.state = state;
        this.user_phone = user_phone;
        this.address = address;
        this.name = name;
        this.courier_num = courier_num;
        this.status_id = status_id;
        this.color_id = color_id;
        this.address_id = address_id;
    }
}
