package web.controller;


import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import web.dto.MemberDTO;
import web.service.face.MemberService;

@Controller
@RequestMapping(value = "/member/*")
public class MemberController {

	@Autowired
	private MemberService service;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	@RequestMapping(value = "/signup" ,method = RequestMethod.GET)
	public void getSignup() { logger.info("get signup");}
	
	
	@RequestMapping(value = "/signup" ,method = RequestMethod.POST)
	public String postSignup(MemberDTO member)
	{ logger.info("post signup");
	
	 service.signup(member);
	 
	 return "redirect:/member/signin";
	
	}
	
	@RequestMapping(value = "/signin" ,method = RequestMethod.GET)
	public void getSigin() { logger.info("get signup");}
	
	@RequestMapping(value = "/signin" ,method = RequestMethod.POST)
	public String postSigin(MemberDTO member,HttpSession session,RedirectAttributes rttr) 
	{ logger.info("post signin");

       MemberDTO login = service.signin(member);
	       
	    
	   if(login != null ) {
		   
		 session.setAttribute("member", login);
       
        
		   return "redirect:/";
		    
		   
	   }else {
		   
		   rttr.addFlashAttribute("msg", false);
		   		   
		   return "redirect:/member/signin";
	   }
	
	}
	
	@RequestMapping(value = "/signout" ,method = RequestMethod.GET)
	public void getSignout(HttpSession session) { logger.info("get signout");
	session.invalidate();
	}
	
	
	
}
