package com.example.backend.controller.paymentDAO;

import com.example.backend.model.order.Cash;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface CashRepository extends PaymentRepository<Cash> {
}
