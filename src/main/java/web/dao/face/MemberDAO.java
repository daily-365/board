package web.dao.face;

import web.dto.MemberDTO;

public interface MemberDAO {

	public void signup(MemberDTO member);
	
	public int signin(MemberDTO member);
}
