package ru.innopolis.nikn.models.entities;

import javax.persistence.Column;
import javax.persistence.Entity;

/**
 * Created by Nikolay on 30.11.2016.
 */
@Entity
public class Status extends BaseEntity{

    @Column
    private String name;
    @Column
    private String className;
    @Column
    private String message;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
