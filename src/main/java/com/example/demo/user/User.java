package com.example.demo.user;

import java.security.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class User {
  Long seq;
  String id;
  String pw;
  String email;
  String tell;
  String address;
  Timestamp rgstr_date;
  Timestamp updt_date;
  
}
