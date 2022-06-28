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

  private int currentPage;
  
}
