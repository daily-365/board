package web.controller;



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
import web.util.Paging;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	
	@Autowired
	private BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
    
	@RequestMapping(value = "/list")
	public void postList(BoardDTO board,Model model,Paging paging,
			@RequestParam(value = "nowPage",required = false)String nowPage,
	        @RequestParam(value = "cntPerPage",required = false)String cntPerPage
			){
		
		logger.info("All List");
		
		int totalCount= service.count();
		
		if(nowPage==null && cntPerPage==null) {
			
			nowPage="1";
			cntPerPage="5";
			
		}else if(nowPage==null) {
			nowPage="1";
		}else if (cntPerPage==null) {
			
			cntPerPage="5";
		}
		
		paging = new Paging(totalCount, Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
		 
		 model.addAttribute("paging",paging);
		 model.addAttribute("list",service.listPage(paging));
 
	  
	 
	
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
