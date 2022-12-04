package com.example.backend.controller.orderDAO;

import com.example.backend.model.item_product.Item;
import com.example.backend.model.order.Cart;
import com.example.backend.model.order.Order;
import com.example.backend.model.order.OrderDetail;

import java.util.List;

public interface OrderDAO {
    public Item getItemById(int id);
    public List<OrderDetail> getAllOrderByCustomer(int id);
}
