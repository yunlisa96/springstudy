package com.example.demo.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class UserController {
  @Autowired
  private UserServiceImpl userSVI;

  @RequestMapping("/signup")
  public String signup() {
    return "user/signup";
  }

  @ResponseBody
  @RequestMapping("/adduser")
  public String adduser(User user, Model model) {
    int result = userSVI.adduser(user);
String msg = "";
    if(result == 1){
      msg = "성공";
    }else{
      msg = "실패";
    }
    //ModelAndView mv = new ModelAndView();
    model.addAttribute("msg", msg);
    return msg;
    
  } 
  @RequestMapping("/signuplist")
  public String signuplist(Model model){
    List<User> list = new ArrayList<User>();
    list = userSVI.list();
    for(User b : list){
      System.out.println(b.getId());
      System.out.println(b.getRgstr_date());
    }
    model.addAttribute("list", list);
    return "user/signuplist";
  }

  @RequestMapping("userinfo")
  public String userinfo(User user, Model model) {
    user = userSVI.userinfo(user);
    model.addAttribute("user",user);
    return "/user/userinfo";
  }
  
}
