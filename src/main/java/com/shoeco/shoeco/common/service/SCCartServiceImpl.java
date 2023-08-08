package com.shoeco.shoeco.common.service;

import java.util.List;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.domain.SCCartVO;
import com.shoeco.shoeco.common.mapper.SCCartMapper;
import com.shoeco.shoeco.common.mapper.SCUsersMapper;

import lombok.AllArgsConstructor;

//230808 동현 작성
@Service
@AllArgsConstructor
@Primary
public class SCCartServiceImpl implements SCCartService{
	
	private SCCartMapper cartMapper;
	
	// 회원의 장바구니 목록 조회
	public List<SCCartVO> selectCart(){
		
		
		List<SCCartVO> cartList = cartMapper.selectCartList();
		System.out.println("Service의 장바구니 목록 조회: " + cartList);
		
		return cartList;
	}
}
