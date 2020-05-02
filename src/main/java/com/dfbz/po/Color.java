package com.dfbz.po;

public class Color {
    private int cid;
    private int commodity_id;
    private String color;
    private int count;

    public Color(int commodity_id, String color) {
        this.commodity_id = commodity_id;
        this.color = color;
    }

    public Color(int cid, int commodity_id, String color, int count) {
        this.cid = cid;
        this.commodity_id = commodity_id;
        this.color = color;
        this.count = count;
    }

    public Color() {
    }

    @Override
    public String toString() {
        return "Color{" +
                "cid=" + cid +
                ", commodity_id=" + commodity_id +
                ", color='" + color + '\'' +
                ", count=" + count +
                '}';
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getCommodity_id() {
        return commodity_id;
    }

    public void setCommodity_id(int commodity_id) {
        this.commodity_id = commodity_id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
