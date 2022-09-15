package com.springboot.socialapp.jdbc;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
// @Table(name = "friends")
public class Friends {
    public Friends(int id, String name) {
        super();
        this.id = id;
        this.name = name;
    }

    @Id
    @GeneratedValue
    public int id;
    public String name;

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

    public Friends() {

    }

    @Override
    public String toString() {
        return "Friends [id=" + id + ", name=" + name + "]";
    }

    public void add(Friends friend) {
    }

}