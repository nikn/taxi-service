package ru.innopolis.nikn.models.entities;

import java.sql.Timestamp;

/**
 * Created by Nikolay on 30.11.2016.
 */
public class Order {
    private int id;
    private User user;

    private OrderStatus orderStatus;

    private Timestamp createTime;
    private Timestamp modifyTime;

    private double srcLat;
    private double srcLong;

    private double dstLat;
    private double dstLong;

    private double distance;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public OrderStatus getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(OrderStatus orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Timestamp getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Timestamp modifyTime) {
        this.modifyTime = modifyTime;
    }

    public double getSrcLat() {
        return srcLat;
    }

    public void setSrcLat(double srcLat) {
        this.srcLat = srcLat;
    }

    public double getSrcLong() {
        return srcLong;
    }

    public void setSrcLong(double srcLong) {
        this.srcLong = srcLong;
    }

    public double getDstLat() {
        return dstLat;
    }

    public void setDstLat(double dstLat) {
        this.dstLat = dstLat;
    }

    public double getDstLong() {
        return dstLong;
    }

    public void setDstLong(double dstLong) {
        this.dstLong = dstLong;
    }

    public double getDistance() {
        return distance;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
