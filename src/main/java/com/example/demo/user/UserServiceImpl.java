package com.example.demo.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

  @Autowired
  private UserMapper um;

  @Override
  public int adduser(User user) {
    int result = um.adduser(user);
    // TODO Auto-generated method stub
    return result;
  }

  @Override
  public List<User> list() {
    List<User> list = um.list();
    // TODO Auto-generated method stub
    return list;
  }
  
}
