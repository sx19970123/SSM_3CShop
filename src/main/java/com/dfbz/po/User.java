package com.dfbz.po;

import java.math.BigInteger;

public class User {

    private int user_id;
    private String user_name;
    private BigInteger user_phone;
    private String user_pass;
    private String user_photo;
    private String user_email;
    private String cname;

    public User(int user_id, String user_name, BigInteger user_phone, String user_pass, String user_photo, String user_email) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_phone = user_phone;
        this.user_pass = user_pass;
        this.user_photo = user_photo;
        this.user_email = user_email;
    }

    public User(int user_id, String user_name, BigInteger user_phone, String user_pass, String user_photo, String user_email, String cname) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_phone = user_phone;
        this.user_pass = user_pass;
        this.user_photo = user_photo;
        this.user_email = user_email;
        this.cname = cname;
    }

    public User() {
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public BigInteger getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(BigInteger user_phone) {
        this.user_phone = user_phone;
    }

    public String getUser_pass() {
        return user_pass;
    }

    public void setUser_pass(String user_pass) {
        this.user_pass = user_pass;
    }

    public String getUser_photo() {
        return user_photo;
    }

    public void setUser_photo(String user_photo) {
        this.user_photo = user_photo;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                ", user_phone=" + user_phone +
                ", user_pass='" + user_pass + '\'' +
                ", user_photo='" + user_photo + '\'' +
                ", user_email='" + user_email + '\'' +
                ", cname='" + cname + '\'' +
                '}';
    }
}
