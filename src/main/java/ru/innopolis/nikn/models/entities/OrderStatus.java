package ru.innopolis.nikn.models.entities;

/**
 * Created by Nikolay on 30.11.2016.
 */
public class OrderStatus {

    private int id;
    private String name;
    private String className;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

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
}
