package com.example.backend.controller.orderDAO;

import com.example.backend.model.item_product.Item;
import com.example.backend.model.order.Cart;
import com.example.backend.model.order.Order;
import com.example.backend.model.order.OrderDetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/orders")
public class OrderDAOImpl implements OrderDAO{
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    @Override
    public Item getItemById(int id) {
        return null;
    }

    @GetMapping("/{customerID}")
    @Override
    public List<OrderDetail> getAllOrderByCustomer(@PathVariable(name = "customerID") int id) {
        List<Order> orders = orderRepository.findAllByCustomerId(id);
        List<OrderDetail> orderDetails = new ArrayList<>();
        for(Order o: orders){
            List<OrderDetail> orderDetails1 = orderDetailRepository.findOrderDetailByOrderId(o.getId());
            orderDetails.addAll(orderDetails1);
        }
        return orderDetails;
    }
}
