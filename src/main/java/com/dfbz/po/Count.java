package com.dfbz.po;

public class Count {
    private int count;
    private int sum;

    public Count(int count, int sum) {
        this.count = count;
        this.sum = sum;
    }

    public Count() {
    }

    @Override
    public String toString() {
        return "Count{" +
                "count=" + count +
                ", sum=" + sum +
                '}';
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }
}
