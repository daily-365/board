package web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import web.dto.BoardDTO;
import web.service.face.BoardService;
import web.util.PageMaker;
import web.util.SearchCriteria;



@Controller
	public class HomeController {

		
	@Autowired
	private BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
    
	@RequestMapping(value = "/")
	public String postList(BoardDTO board,Model model,HttpSession session,
			@ModelAttribute("scri") SearchCriteria scri){
		
		logger.info("All List");
		
	    List<BoardDTO> list = null;
	    
	   list = service.listPage(scri);
	   
	   model.addAttribute("list",list);
	   
	   //페이지네이션 / 게시글 조회
	   PageMaker pageMaker = new PageMaker();
	   
	   pageMaker.setCri(scri);
	   pageMaker.setTotalCount(service.listCount());
	   
	   model.addAttribute("pageMaker",pageMaker);
	  
	   
	   //권한에 따른 게시글 접근
	   
//       MemberDTO member = (MemberDTO)session.getAttribute("userId");
//       List<BoardDTO> boardIdCheckList = service.idCheck(board);
//	   
//           
//       model.addAttribute("idCheck",boardIdCheckList);
//	   
	   
	   
		 return "home";
	
	}
		
		
	}


