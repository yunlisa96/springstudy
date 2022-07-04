package com.example.demo.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductMapper pm;

    @Override
    public int addproduct(Product product) {
        int result = pm.addproduct(product);
        // TODO Auto-generated method stub
        return result;
    }
    
    
}
