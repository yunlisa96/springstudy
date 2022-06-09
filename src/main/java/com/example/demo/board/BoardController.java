package com.example.demo.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class BoardController {
  
  @Autowired
  private BoardServiceImpl boardSVI;

  @RequestMapping("/insert")
  @ResponseBody
  public int insert(Board board) {

    // board.setContent("테스트 콘텐츠");
    // board.setTitle("테스트 제목");
    // board.setUser_id("testid");

    int result = boardSVI.insert(board);
    return result;

  }
  
  @GetMapping("/aa")
  public String index(Model Model) {
    
    return "board/index";
  }
  
}
