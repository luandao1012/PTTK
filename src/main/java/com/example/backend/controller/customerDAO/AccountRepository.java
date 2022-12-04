package com.example.backend.controller.customerDAO;

import com.example.backend.model.customer.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<Account, Integer> {
    Account findByUsername(String username);
    Boolean existsByUsername(String username);
}
