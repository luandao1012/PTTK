package com.example.backend.controller.cartDAO;

import com.example.backend.model.order.Cart;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CartRepository extends JpaRepository<Cart, Integer> {
    public List<Cart> findAllByCustomerId(int id);
    public void deleteByItemIdAndCustomerId(int itemId, int customerId);
    public Cart findByItemIdAndCustomerId(int itemID, int customerID);
    public boolean existsCartByItemIdAndCustomerId(int itemID, int customerID);
}
