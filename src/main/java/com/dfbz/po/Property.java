package com.dfbz.po;

public class Property {
    private int commodity_id;
    private String commodity_name;
    private String property;

    public Property(int commodity_id, String commodity_name, String property) {
        this.commodity_id = commodity_id;
        this.commodity_name = commodity_name;
        this.property = property;
    }

    public Property() {
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

    public String getProperty() {
        return property;
    }

    public void setProperty(String property) {
        this.property = property;
    }

    @Override
    public String toString() {
        return "Property{" +
                "commodity_id=" + commodity_id +
                ", commodity_name='" + commodity_name + '\'' +
                ", property='" + property + '\'' +
                '}';
    }
}
