package com.example.demo.product;

import java.util.List;

public interface ProductService {
    public int addproduct(Product product);

    public List<Product> productlist();

    public Product productinfo(Product product);

    public int productedit2(Product product);

    public int productdelete(Product product);
    
}
