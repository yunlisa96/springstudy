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
  public List<Board> list(Board vo) {
    // TODO Auto-generated method stub
    List<Board> list = bm.list(vo);
    return list;
  }

  @Override
  public Board view(Board vo) {
    // TODO Auto-generated method stub
    return bm.view(vo);
  }

  @Override
  public int edit(Board vo) {
    // TODO Auto-generated method stub
    return bm.edit(vo);
  }

  @Override
  public int countup(Board board) {
    int result = bm.countup(board);
    // TODO Auto-generated method stub
    return result;
  }

  @Override
  public int countup2(Board board) {
    // TODO Auto-generated method stub
    return 0;
  }

  @Override
  public int delete(Board board) {
    int result = bm.delete(board);
    // TODO Auto-generated method stub
    return result;
  }

  @Override
  public int listCount() {
    // TODO Auto-generated method stub
    return bm.listCount();
  }
  
}
