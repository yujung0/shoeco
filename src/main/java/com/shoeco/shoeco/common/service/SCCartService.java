package com.shoeco.shoeco.common.service;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCCartVO;
import com.shoeco.shoeco.common.paging.CartPagingDTO;

//230808 동현 작성
public interface SCCartService {
	
	
	// 회원의 장바구니 목록 조회
	public List<SCCartVO> selectCart() ;
	
	
	// 회원의 장바구니 목록 조회(페이징 구현중)
//	public List<SCCartVO> selectCart(CartPagingDTO cartPagingDTO) ;

	
}
