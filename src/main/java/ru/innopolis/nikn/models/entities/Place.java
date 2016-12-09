package ru.innopolis.nikn.models.entities;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 * Created by Nikolay on 05.12.2016.
 */
@Entity
public class Place extends BaseEntity{

    @Column
    private String name;
    @Column
    private double latitude;
    @Column
    private double longitude;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }
}
