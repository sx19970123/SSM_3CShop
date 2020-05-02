package com.dfbz.po;

import java.math.BigInteger;

public class Address {
    private int address_id;
    private int user_id;
    private BigInteger user_phone;
    private String address;
    private String name;

    public Address(int address_id, int user_id, BigInteger user_phone, String address, String name) {
        this.address_id = address_id;
        this.user_id = user_id;
        this.user_phone = user_phone;
        this.address = address;
        this.name = name;
    }

    @Override
    public String toString() {
        return "Address{" +
                "address_id=" + address_id +
                ", user_id=" + user_id +
                ", user_phone=" + user_phone +
                ", address='" + address + '\'' +
                ", name='" + name + '\'' +
                '}';
    }

    public Address() {
    }

    public int getAddress_id() {
        return address_id;
    }

    public void setAddress_id(int address_id) {
        this.address_id = address_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
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
}
