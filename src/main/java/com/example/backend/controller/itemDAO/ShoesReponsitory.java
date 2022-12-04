package com.example.backend.controller.itemDAO;

import com.example.backend.model.item_product.shoes.Shoes;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ShoesReponsitory extends JpaRepository<Shoes, Integer> {
    List<Shoes> findAllByBrand(String brand);
}
