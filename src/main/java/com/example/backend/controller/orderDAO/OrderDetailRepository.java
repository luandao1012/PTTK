package com.example.backend.controller.orderDAO;

import com.example.backend.model.item_product.Item;
import com.example.backend.model.order.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer> {
    List<OrderDetail> findOrderDetailByOrderId(int orderID);
}
