package com.example.demo.board;

import java.util.List;

public interface BoardMapper {

  public int insertBoard(Board vo);

  public List<Board> list();

  public Board view(Board vo);

  public int edit(Board vo);
  
}
