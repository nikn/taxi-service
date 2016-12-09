package ru.innopolis.nikn.models.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * Created by Nikolay on 22.11.2016.
 */
@Entity
@Table(name = "profiles")
public class Profile extends BaseEntity{

    @OneToOne
    private User user;
    @Column
    private String firstName;
    @Column
    private String lastName;
    @Column
    private String email;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
