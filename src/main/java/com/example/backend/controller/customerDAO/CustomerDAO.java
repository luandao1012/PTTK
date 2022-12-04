package com.example.backend.controller.customerDAO;

import com.example.backend.model.customer.Account;
import com.example.backend.model.customer.Customer;
import com.example.backend.model.customer.RegisterDTO;
import org.springframework.http.ResponseEntity;

import java.util.List;

public interface CustomerDAO {
    List<Customer> getAllCustomer();
    List<Account> getAllAccount();
    Customer getCustomerById(int id);

    ResponseEntity register(RegisterDTO registerDTO);

    ResponseEntity login(String username, String password);
}
