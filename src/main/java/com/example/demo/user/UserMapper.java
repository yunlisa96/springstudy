package com.example.demo.user;

import java.util.List;

public interface UserMapper {
  public int adduser(User user); 

  public List<User> list();

  public User userinfo(User user);

  public int useredit2(User user);

  public int userdel(User user);

  public User getCurrentpage();


}
