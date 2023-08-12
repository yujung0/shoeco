package com.shoeco.shoeco.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.domain.SCMemberVO;
import com.shoeco.shoeco.common.mapper.SCMemberMapper;

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
	
}
