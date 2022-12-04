package com.example.backend.controller.customerDAO;

import com.example.backend.model.customer.FullName;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FullNameRepository extends JpaRepository<FullName, Integer> {
}
