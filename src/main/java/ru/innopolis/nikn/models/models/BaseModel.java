package ru.innopolis.nikn.models.models;

/**
 * Created by Nikolay on 09.12.2016.
 */
public class BaseModel {
    private long id;
    private long version;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getVersion() {
        return version;
    }

    public void setVersion(long version) {
        this.version = version;
    }
}
