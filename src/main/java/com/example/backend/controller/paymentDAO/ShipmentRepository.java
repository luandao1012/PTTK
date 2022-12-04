package com.example.backend.controller.paymentDAO;

import com.example.backend.model.order.Shipment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ShipmentRepository extends JpaRepository<Shipment, Integer> {
}
