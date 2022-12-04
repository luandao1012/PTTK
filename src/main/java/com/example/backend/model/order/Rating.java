package com.example.backend.model.order;

import com.example.backend.model.item_product.Item;

import javax.persistence.*;

@Entity
@Table(name = "rating")
public class Rating {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;

    @OneToOne
    @JoinColumn(name = "OrderDetailID")
    private OrderDetail orderDetail;

    @Column(name = "Rate")
    private int rate;
}
