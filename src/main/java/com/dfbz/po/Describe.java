package com.dfbz.po;

public class Describe {
    private int did;
    private int commodity_id;
    private String commodity_describe;

    public Describe(int did, int commodity_id, String commodity_describe) {
        this.did = did;
        this.commodity_id = commodity_id;
        this.commodity_describe = commodity_describe;
    }

    @Override
    public String toString() {
        return "Describe{" +
                "did=" + did +
                ", commodity_id=" + commodity_id +
                ", commodity_describe='" + commodity_describe + '\'' +
                '}';
    }

    public Describe() {
    }

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public int getCommodity_id() {
        return commodity_id;
    }

    public void setCommodity_id(int commodity_id) {
        this.commodity_id = commodity_id;
    }

    public String getCommodity_describe() {
        return commodity_describe;
    }

    public void setCommodity_describe(String commodity_describe) {
        this.commodity_describe = commodity_describe;
    }
}
