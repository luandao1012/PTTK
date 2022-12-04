package com.example.backend.model.item_product.shoes;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "shoes")
public class Shoes implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;
    @Column(name = "Size1")
    private String size1;
    @Column(name = "Size2")
    private String size2;
    @Column(name = "Size3")
    private String size3;
    @Column(name = "Quantity")
    private int quantity;
    @Column(name = "Description")
    private String description;
    @ManyToOne
    @JoinColumn(name = "ProducerID")
    private Producer producer;

    @Column(name = "Brand")
    private String brand;
    @ManyToOne
    @JoinColumn(name = "CategoryID")
    private Category category;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSize1() {
        return size1;
    }

    public void setSize1(String size1) {
        this.size1 = size1;
    }

    public String getSize2() {
        return size2;
    }

    public void setSize2(String size2) {
        this.size2 = size2;
    }

    public String getSize3() {
        return size3;
    }

    public void setSize3(String size3) {
        this.size3 = size3;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Producer getProducer() {
        return producer;
    }

    public void setProducer(Producer producer) {
        this.producer = producer;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
