package com.example.demo.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProductController {
    @Autowired
    private ProductMapper productSVI;

    @RequestMapping("/product_regis")
    public String product_regis() {
        return "product/product_regis";
    }
    
    @ResponseBody
    @RequestMapping("/addproduct")
    public String addproduct(Product product, Model model) {
        int result = productSVI.addproduct(product);
    String mss = "";
        if(result == 1){
            mss = "성공";
        }else{
            mss = "실패";
        }
        model.addAttribute("mss",mss);
        return mss;
        }
    }

