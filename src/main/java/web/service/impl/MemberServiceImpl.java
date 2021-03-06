package web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.dao.face.MemberDAO;
import web.dto.MemberDTO;
import web.service.face.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	
  @Autowired
  private MemberDAO dao;

@Override
public void signup(MemberDTO member) {
	dao.signup(member);
	
}

@Override
public MemberDTO signin(MemberDTO member) {

  return dao.signin(member);
}
  
  
  
  
	
	

}
