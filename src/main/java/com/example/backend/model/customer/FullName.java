package com.example.backend.model.customer;

import javax.persistence.*;
import java.io.Serializable;
@Entity
@Table(name = "fullname")
public class FullName implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;
    @Column(name = "FirstName")
    private String firstName;
    @OneToOne
    @JoinColumn(name = "CustomerID")
    private Customer CustomerID;
    @Column(name = "LastName")
    private String lastName;

    public FullName(String firstName, Customer customerID, String lastName) {
        this.firstName = firstName;
        CustomerID = customerID;
        this.lastName = lastName;
    }

    public FullName() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public Customer getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(Customer customerID) {
        CustomerID = customerID;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
