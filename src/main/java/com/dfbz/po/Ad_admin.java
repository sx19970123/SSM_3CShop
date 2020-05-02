package com.dfbz.po;

public class Ad_admin {
    private int admin_id;
    private String admin_pass;
    private String admin_name;
    private String role_name;
    private int role_id;
    private int control_id;



    public Ad_admin(String admin_pass, String admin_name) {
        this.admin_pass = admin_pass;
        this.admin_name = admin_name;
    }

    public Ad_admin(int admin_id, String admin_pass, String admin_name) {
        this.admin_id = admin_id;
        this.admin_pass = admin_pass;
        this.admin_name = admin_name;
    }

    public Ad_admin() {
    }

    @Override
    public String toString() {
        return "Ad_admin{" +
                "admin_id=" + admin_id +
                ", admin_pass='" + admin_pass + '\'' +
                ", admin_name='" + admin_name + '\'' +
                ", role_name='" + role_name + '\'' +
                ", role_id=" + role_id +
                ", control_id=" + control_id +
                '}';
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }

    public String getAdmin_pass() {
        return admin_pass;
    }

    public void setAdmin_pass(String admin_pass) {
        this.admin_pass = admin_pass;
    }

    public String getAdmin_name() {
        return admin_name;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    public String getRole_name() {
        return role_name;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public int getControl_id() {
        return control_id;
    }

    public void setControl_id(int control_id) {
        this.control_id = control_id;
    }

    public Ad_admin(int admin_id, String admin_pass, String admin_name, String role_name, int role_id, int control_id) {
        this.admin_id = admin_id;
        this.admin_pass = admin_pass;
        this.admin_name = admin_name;
        this.role_name = role_name;
        this.role_id = role_id;
        this.control_id = control_id;
    }
}
