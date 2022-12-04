package com.example.backend.controller.paymentDAO;

import com.example.backend.model.order.Shipment;

public interface PaymentDAO {
    public float getTotal(int cartID);
    public Shipment getShipmentById(int id);
    public void getPayment(String payment);
//    public List<Payment> getPaymentByOrder(int orderID);
}
