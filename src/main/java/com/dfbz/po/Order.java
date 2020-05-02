package com.dfbz.po;

public class Order {
   private int o_id;
   private String o_name;

    public Order(int o_id, String o_name) {
        this.o_id = o_id;
        this.o_name = o_name;
    }

    public Order() {
    }

    @Override
    public String toString() {
        return "Order{" +
                "o_id=" + o_id +
                ", o_name='" + o_name + '\'' +
                '}';
    }

    public int getO_id() {
        return o_id;
    }

    public void setO_id(int o_id) {
        this.o_id = o_id;
    }

    public String getO_name() {
        return o_name;
    }

    public void setO_name(String o_name) {
        this.o_name = o_name;
    }
}
