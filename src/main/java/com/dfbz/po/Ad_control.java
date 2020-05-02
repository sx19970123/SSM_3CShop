package com.dfbz.po;

public class Ad_control {
    private int control_id;
    private int role_id;
    private int admin_id;

    public Ad_control(int control_id, int role_id, int admin_id) {
        this.control_id = control_id;
        this.role_id = role_id;
        this.admin_id = admin_id;
    }

    public Ad_control() {
    }

    @Override
    public String toString() {
        return "Ad_control{" +
                "control_id=" + control_id +
                ", role_id=" + role_id +
                ", admin_id=" + admin_id +
                '}';
    }

    public int getControl_id() {
        return control_id;
    }

    public void setControl_id(int control_id) {
        this.control_id = control_id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }
}
