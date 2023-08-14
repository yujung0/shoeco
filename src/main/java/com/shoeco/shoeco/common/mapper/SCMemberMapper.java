package com.shoeco.shoeco.common.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.shoeco.shoeco.common.domain.SCMemberVO;

@Mapper
public interface SCMemberMapper {

	//2308091307 장유정
	//회원가입
	public void memberJoin(SCMemberVO member);

	//2308121913 장유정
	//아이디 중복 검사
	public int idCheck(String userId);
}
