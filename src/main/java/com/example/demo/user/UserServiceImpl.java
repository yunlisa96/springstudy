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


@Override
public User userinfo(User user) {

  // TODO Auto-generated method stub
  return um.userinfo(user);
}

@Override
public int useredit2(User user) {
  // TODO Auto-generated method stub
  return um.useredit2(user);
}

@Override
public int userdel(User user) {
  
  // TODO Auto-generated method stub
  return um.userdel(user);
}

public int listCount() {
  return 0;
}

public User getCurrentPage(){
  return um.getCurrentpage();
}

@Override
public User getCurrentPage(User user) {
  // TODO Auto-generated method stub
  return um.getCurrentpage();
}

}