package com.dfbz.po;

public class user_size {
    private int name;
    private String names;

    public user_size(int name, String names) {
        this.name = name;
        this.names = names;
    }

    @Override
    public String toString() {
        return "user_size{" +
                "name=" + name +
                ", names='" + names + '\'' +
                '}';
    }

    public user_size() {
    }

    public int getName() {
        return name;
    }

    public void setName(int name) {
        this.name = name;
    }

    public String getNames() {
        return names;
    }

    public void setNames(String names) {
        this.names = names;
    }
}
