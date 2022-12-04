package com.example.backend.controller.customerDAO;

import com.example.backend.model.customer.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {
    public Customer findByMail(String mail);
    public Boolean existsByMail(String mail);
}
