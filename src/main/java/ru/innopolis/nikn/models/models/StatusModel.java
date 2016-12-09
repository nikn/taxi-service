package ru.innopolis.nikn.models.models;

/**
 * Created by Nikolay on 05.12.2016.
 */
public class StatusModel extends BaseModel {

    private String name;
    private String className;
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
