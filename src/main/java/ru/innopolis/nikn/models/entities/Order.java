package ru.innopolis.nikn.models.entities;

import org.hibernate.annotations.ManyToAny;

import javax.persistence.*;
import java.sql.Timestamp;



/**
 * Created by Nikolay on 30.11.2016.
 */
@Entity
@Table(name = "orders")
public class Order extends BaseEntity{

    @ManyToOne
    private Profile profile;

//    @Column
//    @ManyToOne
//    private Status status;

    @Column
    private Timestamp createTime;
    @Column
    private Timestamp modifyTime;


    @ManyToOne
    private Place srcPlace;

    @ManyToOne
    private Place dstPlace;

    @Column
    private double distance;

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

    public double getDistance() {
        return distance;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }

    public Profile getProfile() {
        return profile;
    }

    public void setProfile(Profile profile) {
        this.profile = profile;
    }

    public Place getSrcPlace() {
        return srcPlace;
    }

    public void setSrcPlace(Place srcPlace) {
        this.srcPlace = srcPlace;
    }

    public Place getDstPlace() {
        return dstPlace;
    }

    public void setDstPlace(Place dstPlace) {
        this.dstPlace = dstPlace;
    }
}
