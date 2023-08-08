package com.shoeco.shoeco.common.service;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCCartVO;

//230808 동현 작성
public interface SCCartService {
	
	
	// 회원의 장바구니 목록 조회
	public List<SCCartVO> selectCart() ;

	
}
