package com.shoeco.shoeco.common.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.mapper.SCUsersMapper;

import lombok.AllArgsConstructor;

//230628 1255 동현 수정
@Service
@AllArgsConstructor
@Primary
public class SCUsersServiceImpl implements SCUsersService{
	
	private SCUsersMapper scUsersMapper;
	
	// 회원 등록
	public Integer registerUser() {
		
		return scUsersMapper.insertSCUser();
	}
}
