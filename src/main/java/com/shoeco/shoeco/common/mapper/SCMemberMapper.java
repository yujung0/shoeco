package com.shoeco.shoeco.common.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.shoeco.shoeco.common.domain.SCMemberVO;

@Mapper
public interface SCMemberMapper {

	//2308091307 장유정
	//회원가입
	public void memberJoin(SCMemberVO member);
}
