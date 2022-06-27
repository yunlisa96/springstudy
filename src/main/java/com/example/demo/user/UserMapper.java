package com.example.demo.user;

import java.util.List;

public interface UserMapper {
  public int adduser(User user); 
  public List<User> list();
}
