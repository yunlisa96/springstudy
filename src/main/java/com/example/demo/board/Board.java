package com.example.demo.board;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Setter
@Getter
@ToString
public class Board {

  Long seq;

  String content;

  String title;

  Timestamp rgstr_date;

  Timestamp updt_date;

  String user_id;

  int view_cnt;

public void setContent(String string) {
  this.content = string;
}

public void setTitle(String string) {
  this.title = string;
}

public void setUser_id(String string) {
  this.user_id = string;
}
  
}
