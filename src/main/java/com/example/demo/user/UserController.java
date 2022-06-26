package com.example.demo.user;

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
}
