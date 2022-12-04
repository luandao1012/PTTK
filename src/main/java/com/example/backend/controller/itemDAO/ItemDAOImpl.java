package com.example.backend.controller.itemDAO;

import com.example.backend.controller.cartDAO.CartDAO;
import com.example.backend.controller.cartDAO.CartRepository;
import com.example.backend.controller.customerDAO.CustomerDAO;
import com.example.backend.model.item_product.Item;
import com.example.backend.model.item_product.shoes.Shoes;
import com.example.backend.model.order.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/items")
public class ItemDAOImpl implements ItemDAO{
    @Autowired
    private ItemRepository itemRepository;
    @Autowired
    private CartDAO cartDAO;
    @Autowired
    private CustomerDAO customerDAO;
    @Autowired
    private CartRepository cartRepository;
    @Autowired
    private ShoesReponsitory shoesReponsitory;

    @GetMapping("/allItem")
    @Override
    public List<Item> getAllItem() {
        return itemRepository.findAll();
    }
    @GetMapping("/item/{id}")
    @Override
    public Item getItemById(@PathVariable  int id){
        return itemRepository.findById(id).get();
    };
    @Override
    public List<Item> getItemByCategory(String category) {
        return null;
    }
    @Override
    public Item getItemByName(String name) {
        return null;
    }

    @Override
    public Shoes getShoes(Shoes shoes) {
        return null;
    }

    @GetMapping("/addCart")
    @Override
    public void addToCart(@RequestParam(value= "customerID", required = false) int customerID, @RequestParam(value = "itemID", required = false) int itemID,
                          @RequestParam(value = "quantity", required = false) int quantity) {
        if(!cartRepository.existsCartByItemIdAndCustomerId(itemID, customerID)) {
            Cart newCart = new Cart();
            newCart.setCustomer(customerDAO.getCustomerById(customerID));
            newCart.setItem(getItemById(itemID));
            newCart.setQuantity(quantity);
            cartDAO.saveCart(newCart);
        } else {
            Cart cart = cartDAO.getCartByItemIdAndCustomerID(itemID, customerID);
            int quatity1 = cart.getQuantity();
            cart.setQuantity(quantity+quatity1);
            cartDAO.saveCart(cart);
        }
    }

    @Override
    public Item getItemByCart(int id) {
        return cartDAO.getCartById(id).getItem();
    }

    @GetMapping("/brand")
    @Override
    public List<Item> filterByBrand(@RequestParam(name = "brand") String brand) {
        List<Shoes> shoes = shoesReponsitory.findAllByBrand(brand);
        List<Item> items = new ArrayList<>();
        for(Shoes i:shoes){
            List<Item> itemList = getItemByShoes(i.getId());
            items.addAll(itemList);
        }
        return items;
    }

    @Override
    public List<Item> getItemByShoes(int shoesID) {
        return itemRepository.findAllByShoesID(shoesID);
    }
}
