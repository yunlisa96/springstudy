package com.example.demo.board;

import java.util.List;

public interface BoardMapper {

  public int insertBoard(Board vo);

  public List<Board> list(Board vo);

  public int listCount();

  public Board view(Board vo);

  public int edit(Board vo);

  public int countup(Board board);

  public int delete(Board board);
  
}
