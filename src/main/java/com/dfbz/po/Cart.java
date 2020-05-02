package com.dfbz.po;

import java.math.BigInteger;

public class Cart {
    private int cart_id;
    private int commodity_id;
    private int user_id;
    private String commodity_color;
    private String commodity_size;
    private int commodity_price;
    private String commodity_name;
    private String commodity_category;
    private String commodity_brand;
    private String commodity_photo1;
    private String color;
    private String disk;
    private int price;
    private int state;
    private int state2;
    private int address_id;
    private String courier_num;
    private String name;
    private String address;
    private BigInteger user_phone;
    private String cart;
    private int num;

    public Cart(int cart_id, int commodity_id, int user_id, String commodity_color, String commodity_size, int commodity_price, String commodity_name, String commodity_category, String commodity_brand, String commodity_photo1, String color, String disk, int price, int state, int address_id, String courier_num, String name, String address, BigInteger user_phone, String cart,int num) {
        this.cart_id = cart_id;
        this.commodity_id = commodity_id;
        this.user_id = user_id;
        this.commodity_color = commodity_color;
        this.commodity_size = commodity_size;
        this.commodity_price = commodity_price;
        this.commodity_name = commodity_name;
        this.commodity_category = commodity_category;
        this.commodity_brand = commodity_brand;
        this.commodity_photo1 = commodity_photo1;
        this.color = color;
        this.disk = disk;
        this.price = price;
        this.state = state;
        this.address_id = address_id;
        this.courier_num = courier_num;
        this.name = name;
        this.address = address;
        this.user_phone = user_phone;
        this.cart = cart;
        this.num = num;
    }

    public Cart(int cart_id, int commodity_id, int user_id, String commodity_color, String commodity_size, int commodity_price, String commodity_name, String commodity_category, String commodity_brand, String commodity_photo1, String color, String disk, int price, int state, int state2, int address_id, String courier_num, String name, String address, BigInteger user_phone, String cart) {
        this.cart_id = cart_id;
        this.commodity_id = commodity_id;
        this.user_id = user_id;
        this.commodity_color = commodity_color;
        this.commodity_size = commodity_size;
        this.commodity_price = commodity_price;
        this.commodity_name = commodity_name;
        this.commodity_category = commodity_category;
        this.commodity_brand = commodity_brand;
        this.commodity_photo1 = commodity_photo1;
        this.color = color;
        this.disk = disk;
        this.price = price;
        this.state = state;
        this.state2 = state2;
        this.address_id = address_id;
        this.courier_num = courier_num;
        this.name = name;
        this.address = address;
        this.user_phone = user_phone;
        this.cart = cart;
    }

    public Cart(int cart_id, int commodity_id, int user_id, String commodity_color, String commodity_size, int commodity_price) {
        this.cart_id = cart_id;
        this.commodity_id = commodity_id;
        this.user_id = user_id;
        this.commodity_color = commodity_color;
        this.commodity_size = commodity_size;
        this.commodity_price = commodity_price;
    }

    public Cart(int cart_id, int state, String courier_num) {
        this.cart_id = cart_id;
        this.state = state;
        this.courier_num = courier_num;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cart_id=" + cart_id +
                ", commodity_id=" + commodity_id +
                ", user_id=" + user_id +
                ", commodity_color='" + commodity_color + '\'' +
                ", commodity_size='" + commodity_size + '\'' +
                ", commodity_price=" + commodity_price +
                ", commodity_name='" + commodity_name + '\'' +
                ", commodity_category='" + commodity_category + '\'' +
                ", commodity_brand='" + commodity_brand + '\'' +
                ", commodity_photo1='" + commodity_photo1 + '\'' +
                ", color='" + color + '\'' +
                ", disk='" + disk + '\'' +
                ", price=" + price +
                ", state=" + state +
                ", state2=" + state2 +
                ", address_id=" + address_id +
                ", courier_num='" + courier_num + '\'' +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", user_phone=" + user_phone +
                ", cart='" + cart + '\'' +
                ", num='" + num + '\'' +
                '}';
    }

    public int getState2() {
        return state2;
    }

    public void setState2(int state2) {
        this.state2 = state2;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getCart_id() {
        return cart_id;
    }

    public void setCart_id(int cart_id) {
        this.cart_id = cart_id;
    }

    public int getCommodity_id() {
        return commodity_id;
    }

    public void setCommodity_id(int commodity_id) {
        this.commodity_id = commodity_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getCommodity_color() {
        return commodity_color;
    }

    public void setCommodity_color(String commodity_color) {
        this.commodity_color = commodity_color;
    }

    public String getCommodity_size() {
        return commodity_size;
    }

    public void setCommodity_size(String commodity_size) {
        this.commodity_size = commodity_size;
    }

    public int getCommodity_price() {
        return commodity_price;
    }

    public void setCommodity_price(int commodity_price) {
        this.commodity_price = commodity_price;
    }

    public String getCommodity_name() {
        return commodity_name;
    }

    public void setCommodity_name(String commodity_name) {
        this.commodity_name = commodity_name;
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

    public String getCommodity_photo1() {
        return commodity_photo1;
    }

    public void setCommodity_photo1(String commodity_photo1) {
        this.commodity_photo1 = commodity_photo1;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
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

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getAddress_id() {
        return address_id;
    }

    public void setAddress_id(int address_id) {
        this.address_id = address_id;
    }

    public String getCourier_num() {
        return courier_num;
    }

    public void setCourier_num(String courier_num) {
        this.courier_num = courier_num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public BigInteger getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(BigInteger user_phone) {
        this.user_phone = user_phone;
    }

    public String getCart() {
        return cart;
    }

    public void setCart(String cart) {
        this.cart = cart;
    }

    public Cart() {
    }


}
