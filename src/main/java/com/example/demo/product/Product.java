package com.example.demo.product;


import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class Product {
    Long seq;
    String product_code;
    String product_name;
    Long product_price;
    Long product_stock;
    Timestamp rgstr_date;
    Timestamp updt_date;
    private int page;
    
}
