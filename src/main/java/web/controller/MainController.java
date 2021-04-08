package web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import web.dto.BoardDTO;
import web.service.face.BoardService;
import web.util.Search;

@Controller
	public class MainController {

		
	@Autowired
	private BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
    
	@RequestMapping(value = "/")
	public String postList(BoardDTO board,Model model, Search search ,
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
		
		search = new Search(totalCount, Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
		 		
		
		 model.addAttribute("paging",search);
		 model.addAttribute("list",service.listPage(search));
       
	  
		 return "index";
	
	}
		
		
	}


