package com.example.demo.product;

import java.util.List;

public interface ProductMapper {
  public int addproduct(Product product);

  public List<Product> productlist();

  public Product productinfo(Product product);

  public int productedit2(Product prodcut);

  public int productdelete(Product product);

    
}
