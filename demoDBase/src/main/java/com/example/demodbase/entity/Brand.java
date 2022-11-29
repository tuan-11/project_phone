package com.example.demodbase.entity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "brands")
class Brand implements java.io.Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "brandId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer brandId;

    @Column(name = "brandName")
    private String bandName;

    @Column(name = "logo")
    private String logo;

    @OneToMany(mappedBy = "brandId",cascade = CascadeType.ALL)
    @JsonIgnore
    private Set<Product> products;

    public Brand() {
    }

    public Brand(Integer brandId, String bandName, String logo, Set<Product> products) {
        this.brandId = brandId;
        this.bandName = bandName;
        this.logo = logo;
        this.products = products;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public String getBandName() {
        return bandName;
    }

    public void setBandName(String bandName) {
        this.bandName = bandName;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public Set<Product> getProducts() {
        return products;
    }

    public void setProducts(Set<Product> products) {
        this.products = products;
    }
}
