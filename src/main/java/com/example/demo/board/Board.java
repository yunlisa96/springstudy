package com.example.demo.board;

import java.sql.Timestamp;

import com.example.demo.paging.PagingVo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Setter
@Getter
@ToString
public class Board extends PagingVo{

  private Long seq;

  private String content;

  private String title;

  private Timestamp rgstr_date;

  private Timestamp updt_date;

  private String user_id;

  private int view_cnt;

  private int defaultpage;
  
}
