package com.example.backend.controller.paymentDAO;

import com.example.backend.model.order.Bank;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface BankRepository extends PaymentRepository<Bank> {
}
