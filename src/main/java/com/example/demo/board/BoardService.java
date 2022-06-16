package com.example.demo.board;

import java.util.List;

public interface BoardService {

  public int insert(Board board);

  public List<Board> list();

  public Board view(Board vo);
  
  public int edit(Board vo);
  
}
