package com.example.demo.board;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class BoardTestController {

  @Autowired
  private BoardServiceImpl bsi;

  @Test
  public void insertTest() {
    Board board = new Board();
    // board.setContent("테스트 콘텐츠");
    // board.setTitle("테스트 제목");
    // board.setUser_id("testid");

    bsi.insert(board);

  }
  
}
