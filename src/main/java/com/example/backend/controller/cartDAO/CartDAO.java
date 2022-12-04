package com.example.backend.controller.cartDAO;

import com.example.backend.model.order.Cart;

import java.util.List;

public interface CartDAO {
    public List<Cart> getCartByCustomerId(int customerID);
    public void deleteAllItem(int customerID);
    public void deleteItem(int cartID);
    public Cart getCartById(int id);
    public void editQuantityItem(int cartId, int quantity);
    public Cart getCartByItemIdAndCustomerID(int ItemId, int customerID);
    public Cart saveCart(Cart cart);
}
