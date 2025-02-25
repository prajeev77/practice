package com.app.order_service;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderRestController {

    @GetMapping("/getOrder")
    public ResponseEntity<String> getOrder() {
        return ResponseEntity.ok("Get the order from db");
    }
}
