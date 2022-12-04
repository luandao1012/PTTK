package com.example.backend.model.order;

import com.example.backend.model.item_product.Item;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "comment")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;
    @OneToOne
    @JoinColumn(name = "OderDetailID")
    private OrderDetail orderDetail;
    @Column(name = "CreateDate")
    private Date createDate;
    @Column(name = "title")
    private String title;
    @Column(name = "content")
    private String content;
}
