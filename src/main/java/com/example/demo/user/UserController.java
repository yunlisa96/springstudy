package com.example.demo.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.paging.PagingUtil;
import com.example.demo.paging.PagingVo;


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
  public String signuplist(Model model, PagingVo pagingVo, User user){
    
    pagingVo.setCurrentPage(user.getCurrentPage());
		pagingVo = PagingUtil.setDefaultPaging(PagingUtil.DefaultPaging, pagingVo);

		int cnt = Integer.parseInt(userSVI.listCount() + "");
		pagingVo.setTotalRecordSize(cnt);
    pagingVo = PagingUtil.setPaging(pagingVo);
    
    
    List<User> list = new ArrayList<User>();
    list = userSVI.list();
    for(User b : list){
      System.out.println(b.getId());
      System.out.println(b.getRgstr_date());
    }
    model.addAttribute("list", list);
    model.addAttribute("pagingVo", pagingVo);
    return "user/signuplist";
  }

  @RequestMapping("userinfo")
  public String userinfo(User user, Model model) {
    user = userSVI.userinfo(user);
    model.addAttribute("user",user);
    return "/user/userinfo";
  }

  @RequestMapping("useredit")
  public String useredit(User user, Model model){
    user = userSVI.userinfo(user);
    model.addAttribute("user",user);
    return "/user/useredit";
  }

  @RequestMapping("useredit2")
  public String useredit2(User user, Model model){
    int result = userSVI.useredit2(user);
    return "redirect:/signuplist";
  }

  @RequestMapping("userdel")
  public String userdel(User user, Model model){
    int result = userSVI.userdel(user);
    return "redirect:/signuplist";
  }

}

