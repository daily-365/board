package web.service.face;

import web.dto.MemberDTO;

public interface MemberService {

	public void signup(MemberDTO member);
	
	public MemberDTO signin(MemberDTO member);
}
