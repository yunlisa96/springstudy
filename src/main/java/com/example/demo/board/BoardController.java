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
    int result = boardSVI.insert(board);
    return result;

  }
  
  @GetMapping("/aa")
  public String index(Model Model) {
    
    return "board/index";
  }
  
}
