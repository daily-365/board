package web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import web.dto.BoardDTO;
import web.dto.PageMaker;
import web.dto.Paging;
import web.service.face.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	
	@Autowired
	private BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
    
	@RequestMapping(value = "/list")
	public void postList(BoardDTO board,Model model,
			@ModelAttribute("paging")Paging paging){
		
		logger.info("All List");
		
//		List<BoardDTO> list = service.selectAllList(board);
//	    model.addAttribute("list",list);
		
	    List<BoardDTO> list  =service.pageNation(paging);
		
		 model.addAttribute("list",list);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setPaging(paging);
		 pageMaker.setTotalCount(service.pageListCount());
		 
		 model.addAttribute("pageMaker",pageMaker);
	}
		
	@RequestMapping(value = "/view")
	public void viewBoard(BoardDTO board,Model model) {
		
		logger.info("Borad Read");
		
      BoardDTO view= service.selectByBoardNo(board);
      model.addAttribute("view",view);
		
	}
	
	
	
	@RequestMapping(value = "/write",method = RequestMethod.GET)
	public void getWriteBoard() {logger.info("Get Borad Write");
 	
	}
	
	
	@RequestMapping(value = "/write",method = RequestMethod.POST)
	public String postWriteBoard(BoardDTO board) {
		logger.info("Post Borad Write");
		service.writeBoard(board);
		
	
		return "redirect:/board/list";
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
