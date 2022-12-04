package com.example.backend.model.customer;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table (name = "account")
public class Account implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int ID;
    @OneToOne
    @JoinColumn(name = "CustomerID")
    private Customer customerID;
    @Column(name = "Username")
    private String username;
    @Column(name = "Pass")
    private String password;
    @Column(name = "Status")
    private String status;
    @Column(name = "Role")
    private String role;
    @Column(name = "Image")
    private String image;

    public Account() {
    }

    public Account(Customer customerID, String username, String password, String status, String role, String image) {
        this.customerID = customerID;
        this.username = username;
        this.password = password;
        this.status = status;
        this.role = role;
        this.image = image;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public Customer getCustomerID() {
        return customerID;
    }

    public void setCustomerID(Customer customerID) {
        this.customerID = customerID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

}
