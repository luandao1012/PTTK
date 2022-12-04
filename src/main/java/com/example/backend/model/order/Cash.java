package com.example.backend.model.order;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "cash")
public class Cash extends Payment {
    @Column(name = "Cash_Tendered")
    private float cashTendered;
}
