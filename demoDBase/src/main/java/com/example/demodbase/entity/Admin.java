package com.example.demodbase.entity;

import javax.persistence.*;
import java.util.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "admins")
public class Admin implements java.io.Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "adminName")
    private String adminName;

    @Column(name = "pass")
    private String pass;

    public Admin() {
    }

    public Admin(String adminName, String pass) {
        this.adminName = adminName;
        this.pass = pass;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

}