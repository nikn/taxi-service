package ru.innopolis.nikn.models.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by Nikolay on 09.12.2016.
 */
@Entity
@Table(name = "authorities")
public class Authority extends BaseEntity{

    @Column
    private String authority;

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }
}
