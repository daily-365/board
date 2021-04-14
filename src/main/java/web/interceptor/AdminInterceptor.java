package web.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import web.dto.MemberDTO;



 

public class AdminInterceptor implements HandlerInterceptor {

	@Override
public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		throws Exception {
	
		
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		
		
		if(member ==null) {
			response.sendRedirect("/member/signin");
		return false;	
		}
		
		if(member.getVerify()!= 1) {
			
			response.sendRedirect("/");
		  return false;
		}
		
		
	return true;
}

}
