package com.shoeco.shoeco.common.service;

import com.shoeco.shoeco.common.domain.SCMemberVO;

public interface SCMemberService {

	//2308091420 장유정
	//회원가입
	public void memberJoin(SCMemberVO member) throws Exception;
}
