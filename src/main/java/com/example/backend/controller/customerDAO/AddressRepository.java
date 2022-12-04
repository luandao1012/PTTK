package com.example.backend.controller.customerDAO;

import com.example.backend.model.customer.Address;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AddressRepository extends JpaRepository<Address, Integer> {
}
