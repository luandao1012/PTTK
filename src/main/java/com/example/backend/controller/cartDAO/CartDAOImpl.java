package com.example.backend.controller.cartDAO;

import com.example.backend.model.order.Cart;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.util.List;

@RestController
@RequestMapping("/api/carts")
public class CartDAOImpl implements CartDAO{

    @Autowired
    private CartRepository cartRepository;


    @GetMapping("/{id}")
    @Override
    public List<Cart> getCartByCustomerId(@PathVariable(name = "id") int customerID) {
//        List<Cart> carts = new ArrayList<>();
//        List<Order> orders = orderDAO.getAllOrderByCustomer(customerID);
//        List<Payment> allPayment = new ArrayList<>();
//        for(Order order:orders) {
//            List<Payment> payments = paymentDAO.getPaymentByOrder(order.getId());
//            allPayment.addAll(payments);
//        }
        List<Cart> allCart = cartRepository.findAllByCustomerId(customerID);
//        for(Payment payment:allPayment){
//            carts.add(payment.getCart());
//        }
//        for(Cart cart:carts){
//            if(allCart.contains(cart)){
//                allCart.remove(cart);
//            }
//        }
        return allCart;
    }

    @Transactional
    @DeleteMapping("/deleteAll")
    @Override
    public void deleteAllItem(@RequestParam(name = "customerID") int customerID) {
        List<Cart> carts = getCartByCustomerId(customerID);
        for(Cart cart:carts){
            cartRepository.delete(cart);
        }
    }

    @Transactional
    @DeleteMapping("/delete")
    @Override
    public void deleteItem(@RequestParam(name = "cartID") int cartID) {
        cartRepository.deleteById(cartID);
    }

    @Override
    public Cart getCartById(int id) {
        return cartRepository.findById(id).get();
    }

    @PutMapping("/edit")
    @Override
    public void editQuantityItem(@RequestParam(name = "cartID") int cartId, @RequestParam(name = "quantity") int quantity) {
        Cart cart = getCartById(cartId);
        cart.setQuantity(quantity);
        cartRepository.save(cart);
    }

    @Override
    public Cart getCartByItemIdAndCustomerID(int ItemId, int customerID) {
        return cartRepository.findByItemIdAndCustomerId(ItemId, customerID);
    }

    @Override
    public Cart saveCart(Cart cart) {
        return cartRepository.save(cart);
    }

}
