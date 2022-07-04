package com.example.demo.product;

import java.util.List;

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

    


    @Override
    public List<Product> productlist() {
        List<Product> productlist = pm.productlist();
        // TODO Auto-generated method stub
        return productlist;
    }




    @Override
    public Product productinfo(Product product) {

        // TODO Auto-generated method stub
        return pm.productinfo(product);
    }




    @Override
    public int productedit2(Product product) {
        // TODO Auto-generated method stub
        return pm.productedit2(product);
    }
    
    
}
