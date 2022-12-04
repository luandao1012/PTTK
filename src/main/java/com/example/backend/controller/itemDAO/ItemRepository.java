package com.example.backend.controller.itemDAO;

import com.example.backend.model.item_product.Item;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ItemRepository extends JpaRepository<Item, Integer> {

    List<Item> findAllByShoesID(int shoesID);
}
