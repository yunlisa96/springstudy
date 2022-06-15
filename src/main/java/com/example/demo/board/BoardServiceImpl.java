package com.example.demo.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {
  
  @Autowired
  private BoardMapper bm;

  @Override
  public int insert(Board board) {
    int result = bm.insertBoard(board);
    
    return result;
  }

  @Override
  public List<Board> list() {
    // TODO Auto-generated method stub
    List<Board> list = bm.list();
    return list;
  }
  
}
