package com.example.backend.model.order;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Arrays;

public enum OrderStatus {
    Pending("Pending"),
    Waiting("Waiting"),
    Complete("Complete"),
    Cancel("Cancel");

    OrderStatus(String name) {
    }
}
