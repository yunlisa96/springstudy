package com.example.demo.product;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProductController {

    @Autowired
    private ProductServiceImpl productSVI;

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

    @RequestMapping("/productlist")
    public String productlist(Model model, Product product){
      List<Product> list = new ArrayList<Product>();
      list = productSVI.productlist();
      for(Product pp : list){
System.out.println("product===="+pp.getRgstr_date());
      }
        
      model.addAttribute("productlist", list);

     
      return "product/productlist";
    }    

    @RequestMapping("/productinfo")
    public String productinfo(Product product, Model model) {

        product = productSVI.productinfo(product);

        model.addAttribute("product", product);

    
        return "product/productinfo";
    }

    @RequestMapping("productedit")
    public String productedit(Product product, Model model){
        product = productSVI.productinfo(product);
        model.addAttribute("product", product);
        return "/product/productedit";

    }
    @RequestMapping("productedit2")
    public String productedit2(Product product, Model model){
        int result = productSVI.productedit2(product);
        return "redirect:/productlist";
    }


    }


