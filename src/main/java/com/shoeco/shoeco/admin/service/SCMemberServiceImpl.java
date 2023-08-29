package com.shoeco.shoeco.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.admin.domain.SCMemberVO;
import com.shoeco.shoeco.admin.mapper.SCMemberMapper;

@Service
@Primary
public class SCMemberServiceImpl implements SCMemberService{

	//2308091420 장유정
	@Autowired
	SCMemberMapper membermapper;

	@Override
	public void memberJoin(SCMemberVO member) throws Exception {
		
		membermapper.memberJoin(member);
		
	}
	
	
	//2308121927 장유정
	@Override
	public int idCheck(String userId) throws Exception {
		
		return membermapper.idCheck(userId);
	}
	
	
	//2308161453 장유정
	@Override
	public SCMemberVO memberLogin(SCMemberVO member) throws Exception {
		return membermapper.memberLogin(member);
	}
	
}
