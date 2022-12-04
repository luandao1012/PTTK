package com.example.backend.model.order;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "bank")
public class Bank extends Payment {
    @Column(name = "Account_Number")
    String accountNumber;
    @Column(name = "Name_Bank")
    String nameBank;
}
