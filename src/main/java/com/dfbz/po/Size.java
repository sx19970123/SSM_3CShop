package com.dfbz.po;

public class Size {
    private  int did;
    private int commodity_id;
    private String disk;
    private int price;

    public Size(int did, int commodity_id, String disk, int price) {
        this.did = did;
        this.commodity_id = commodity_id;
        this.disk = disk;
        this.price = price;
    }

    public Size() {
    }

    @Override
    public String toString() {
        return "Size{" +
                "did=" + did +
                ", commodity_id=" + commodity_id +
                ", disk='" + disk + '\'' +
                ", price=" + price +
                '}';
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
}
