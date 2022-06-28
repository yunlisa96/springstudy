package com.example.demo.user;



import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class User {
  Long seq;
  String id;
  String pw;
  String email;
  String tel;
  String address;
  Timestamp rgstr_date;
  Timestamp updt_date;
  private int currentPage;
  
}
