package com.example.demo.board;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class BoardController {
  
  @Autowired
  private BoardServiceImpl boardSVI;

  // @RequestMapping("/insert")
  // @ResponseBody
  // public int insert(Board board) {
  //   int result = boardSVI.insert(board);
  //   return result;

  // }

  @RequestMapping("/insert")
  public String insert(Board board,Model model) {
    int result = boardSVI.insert(board);
    String msg = "";
    if(result == 1){
      msg = "성공";
    }else{
      msg = "실패";
    }
    //ModelAndView mv = new ModelAndView();
    model.addAttribute("msg", msg);
    return "redirect:/list";

  }
  
  @GetMapping("/insertpage")
  public String insertpage(Model Model) {

    return "board/index";
  }
  
  @RequestMapping("list")
  public String list(Model model) {
    List<Board> list = new ArrayList<Board>();
    list = boardSVI.list();
    System.out.println("ssssssss===="+list.size());
    for(Board b : list){
      System.out.println(b.getTitle());
      System.out.println(b.getContent());
    }
    model.addAttribute("list", list);
    return "/board/list";
  }

  @RequestMapping("view")
  public String view(Model model, Board vo) {
    System.out.println(vo);
    int result = boardSVI.countup(vo);
    vo = boardSVI.view(vo);
    System.out.println(vo);
    model.addAttribute("board", vo);
    return "/board/view";
  }

  @RequestMapping("editpage")
  public String editpage(Model model, Board vo) {
    System.out.println(vo);
    vo = boardSVI.view(vo);
    System.out.println(vo);
    model.addAttribute("board", vo);
    return "/board/edit";
  }

  @RequestMapping("edit")
  public String edit(Model model, Board vo) {
    int result = boardSVI.edit(vo);
    String msg = "";
    if(result == 1){
      msg = "성공";
    } else {
      msg = "실패";
    }
    System.out.println("msg======="+msg);
    //model.addAttribute("board", vo);
    return "redirect:/list";
  }
  
}