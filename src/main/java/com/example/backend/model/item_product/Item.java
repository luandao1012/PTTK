package com.example.backend.model.item_product;

import com.example.backend.model.item_product.shoes.Shoes;
import com.example.backend.model.order.Cart;
import com.example.backend.model.order.OrderDetail;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "item")
public class Item implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;
    @OneToOne
    @JoinColumn(name = "ShoesID")
    private Shoes shoesID;
    @Column(name = "Price")
    private float price;
    @Column(name = "Name")
    private String name;
    @Column(name = "Image1")
    private String image1;
    @Column(name = "Image2")
    private String image2;
    @Column(name = "Image3")
    private String image3;
    @Column(name = "Discount")
    private int discount;
    @Column(name = "Rating")
    private String rating;

    @OneToMany(mappedBy = "item")
    private List<Cart> carts;

    @OneToMany(mappedBy = "item")
    private List<OrderDetail> orderDetails= new ArrayList<>();

    public Item() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Shoes getShoesID() {
        return shoesID;
    }

    public void setShoesID(Shoes shoesID) {
        this.shoesID = shoesID;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }
}
