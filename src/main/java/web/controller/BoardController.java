package web.controller;



import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import web.dto.BoardDTO;
import web.service.face.BoardService;


@Controller
@RequestMapping("/board/*")
public class BoardController {

	
	@Autowired
	private BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
    
	@RequestMapping(value = "/view")
	public void viewBoard(BoardDTO board,Model model,
			@RequestParam("boardNo")int boardNo,HttpSession session) {
		
		logger.info("Borad Read");
		
      BoardDTO view= service.selectByBoardNo(board);
      model.addAttribute("view",view);
      
      service.updateHit(boardNo);    
      
   
		
	}
	
	
	
	@RequestMapping(value = "/write",method = RequestMethod.GET)
	public void getWriteBoard() {logger.info("Get Borad Write");
 	
	}
	
	
	@RequestMapping(value = "/write",method = RequestMethod.POST)
	public String postWriteBoard(BoardDTO board) {
		logger.info("Post Borad Write");
		service.writeBoard(board);
		
	
		return "redirect:/";
	}
	
	

	
	@RequestMapping(value = "/modify",method = RequestMethod.GET)
	public void modifyBoard(BoardDTO board) {
		logger.info("Borad Modify");
	  service.modifyBoard(board);
		
	}
	@RequestMapping(value = "/delete",method = RequestMethod.GET)
	public void deleteBoard(@RequestParam("boardNo") int boardNo) {
		logger.info("Borad Delete");
		service.deleteBoard(boardNo);
       
		
	}
	

	
	
	
	
}
