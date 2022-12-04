package com.example.backend.controller.paymentDAO;

import com.example.backend.model.order.Cart;
import com.example.backend.model.order.Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

import java.util.List;
public interface PaymentRepository<P extends Payment>extends JpaRepository<Payment, Integer> {
//    public List<Payment> findAllByOrderId(int orderID);
}
