package com.dfbz.po;

public class Ad_role {
    private int role_id;
    private String role_name;

    public Ad_role(int role_id, String role_name) {
        this.role_id = role_id;
        this.role_name = role_name;
    }

    public Ad_role() {
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getRole_name() {
        return role_name;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name;
    }

    @Override
    public String toString() {
        return "Ad_role{" +
                "role_id=" + role_id +
                ", role_name=" + role_name +
                '}';
    }
}
