package com.shoeco.shoeco.admin.service;

import com.shoeco.shoeco.admin.domain.SCMemberVO;

public interface SCMemberService {

	// 2308091420 장유정
	// 회원가입
	public void memberJoin(SCMemberVO member) throws Exception;

	//2308121927 장유정
	// 아이디 중복 검사
	public int idCheck(String userId) throws Exception;

	//2308161442 장유정
	//로그인
	public SCMemberVO memberLogin(SCMemberVO member) throws Exception;
	
	
}
