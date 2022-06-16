package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

  @ResponseBody
  @RequestMapping("test")
  public String test() {

    return "됐다!";
  }

  @RequestMapping("")
  public String index() {

    return "redirect:/list";
  }
  
}
