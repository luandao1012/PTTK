package com.example.backend.controller.paymentDAO;

import com.example.backend.controller.cartDAO.CartDAO;
import com.example.backend.controller.customerDAO.CustomerRepository;
import com.example.backend.controller.itemDAO.ItemDAO;
import com.example.backend.controller.itemDAO.ShoesReponsitory;
import com.example.backend.controller.orderDAO.OrderDetailRepository;
import com.example.backend.controller.orderDAO.OrderRepository;
import com.example.backend.model.item_product.Item;
import com.example.backend.model.item_product.shoes.Shoes;
import com.example.backend.model.order.*;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.*;

@RestController
@RequestMapping("/api/payment")
public class PaymentDAOImpl implements PaymentDAO {
    @Autowired
    private PaymentRepository paymentRepository;
    @Autowired
    private CashRepository cashRepository;
    @Autowired
    private BankRepository bankRepository;
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private CartDAO cartDAO;
    @Autowired
    private ItemDAO itemDAO;

    @Autowired
    private ShipmentRepository shipmentRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    @Autowired
    private ShoesReponsitory shoesReponsitory;

    @Override
    public float getTotal(int cartID) {
        Item item = itemDAO.getItemByCart(cartID);
        Cart cart = cartDAO.getCartById(cartID);

        return item.getPrice() * cart.getQuantity();
    }

    @Override
    public Shipment getShipmentById(int id) {
        return null;
    }

    @PostMapping("")
    @Override
    @ResponseBody
    public void getPayment(@RequestBody String json) {
        try {
            System.out.println(json);
            Map<String, Object> jsonObject = new ObjectMapper().readValue(json, Map.class);
            int customerID = (int) jsonObject.get("customerID");
            System.out.println(customerID);
            int loaiThanhToan = (int) jsonObject.get("loaiThanhToan");
            System.out.println(loaiThanhToan);
            String[] cart= ((String) jsonObject.get("cart")).split("\\s");
            for(String i:cart){
            System.out.println(i);}
            int total= (int) jsonObject.get("total");
            System.out.println(total);
//            String shipment1 = String.valueOf(jsonObject.get("shipment"));
//            Map<String, Object> shipment2 = new ObjectMapper().readValue(shipment1, Map.class);

            Shipment shipment = new Shipment();
            shipment.setPrice((int) jsonObject.get("price"));
            shipment.setAddress((String) jsonObject.get("address"));
            shipment.setName((String) jsonObject.get("name"));
            shipment.setPhone((String) jsonObject.get("phone"));
            shipmentRepository.save(shipment);

            Payment payment = new Payment();
            payment.setTotal((float) total);
            payment.setShipment(shipment);
            payment.setCreatedDate(LocalDate.now());
            paymentRepository.save(payment);

            Order order = new Order();
            order.setCustomer(customerRepository.findById(customerID).get());
            order.setStatus(OrderStatus.Pending);
            order.setOrderDate(LocalDate.now());
            order.setPayment(payment);
            orderRepository.save(order);
//        List<Order> orders = orderRepository.findAllByCustomerId(customerID);
            for (String i : cart) {
                Cart cart1 = cartDAO.getCartById(Integer.parseInt(i));
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setOrder(order);
                orderDetail.setItem(cart1.getItem());
                orderDetail.setQuantity(cart1.getQuantity());
                orderDetailRepository.save(orderDetail);
                Item item = itemDAO.getItemById(cart1.getItem().getId());
                Shoes shoes = item.getShoesID();
                shoes.setQuantity(shoes.getQuantity()-cart1.getQuantity());
                shoesReponsitory.save(shoes);
                cartDAO.deleteItem(Integer.parseInt(i));

            }
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

//    @Override
//    public List<Payment> getPaymentByOrder(int orderID) {
//        return paymentRepository.findAllByOrderId(orderID);
//    }

}
