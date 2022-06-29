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

import com.example.demo.paging.PagingUtil;
import com.example.demo.paging.PagingVo;



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
  public String list(Model model, Board vo) {


    // 페이징
    System.out.println("aaaaaaaaaaa==="+vo);
		vo.setCurrentPage(vo.getDefaultpage());
    vo = (Board) PagingUtil.setDefaultPaging(PagingUtil.DefaultPaging, vo);
    System.out.println("vo======"+vo);
    int cnt = Integer.parseInt(boardSVI.listCount() + "");
    System.out.println("cnt==========="+cnt);
        vo.setTotalRecordSize(cnt);
    System.out.println("aaaaaaaaaaa==="+vo.getTotalPageSize());
    vo = (Board) PagingUtil.setPaging(vo);
    System.out.println("aaaaaaaaaaa==="+vo);
    
    List<Board> list = new ArrayList<Board>();
    list = boardSVI.list(vo);
    
    model.addAttribute("list", list);
    model.addAttribute("paging", vo);
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
    if (result == 1) {
      msg = "성공";
    } else {
      msg = "실패";
    }
    System.out.println("msg=======" + msg);
    //model.addAttribute("board", vo);
    return "redirect:/list";
  }
  
  @RequestMapping("delete")
  public String delete(Model model, Board vo) {
    int result = boardSVI.delete(vo);
    return "redirect:/list";
  }
  
}