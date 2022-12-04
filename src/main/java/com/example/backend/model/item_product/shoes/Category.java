package com.example.backend.model.item_product.shoes;

import com.example.backend.model.item_product.shoes.Shoes;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "category")
public class Category implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;
    @Column(name = "Name")
    private String name;

    @OneToMany(mappedBy = "category")
    private List<Shoes> shoes;

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

//    public List<Shoes> getShoes() {
//        return shoes;
//    }
//
//    public void setShoes(List<Shoes> shoes) {
//        this.shoes = shoes;
//    }
}
