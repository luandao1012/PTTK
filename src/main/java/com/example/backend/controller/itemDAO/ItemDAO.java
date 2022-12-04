package com.example.backend.controller.itemDAO;

import com.example.backend.model.item_product.Item;
import com.example.backend.model.item_product.shoes.Shoes;

import java.util.List;

public interface ItemDAO {
    public List<Item> getAllItem();
    public Item getItemById(int id);
    List<Item> getItemByCategory(String category);
    Item getItemByName(String name);
    Shoes getShoes(Shoes shoes);
    void addToCart(int customerID, int itemID, int quantity);
    Item getItemByCart(int id);
    public List<Item> filterByBrand(String brand);
    List<Item> getItemByShoes(int shoesID);
}
