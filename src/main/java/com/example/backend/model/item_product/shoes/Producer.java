package com.example.backend.model.item_product.shoes;

import com.example.backend.model.item_product.shoes.Shoes;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "producer")
public class Producer implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @OneToMany(mappedBy = "producer")
    private List<Shoes> shoes;

    @Column(name = "Name")
    private String name;
    @Column(name = "Address")
    private String address;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

//    public List<Shoes> getShoes() {
//        return shoes;
//    }
//
//    public void setShoes(List<Shoes> shoes) {
//        this.shoes = shoes;
//    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
