package com.shoeco.shoeco.common.service;

import java.util.HashMap;
import java.util.List;

import com.shoeco.shoeco.common.domain.SCMyPageVO;
import com.shoeco.shoeco.common.paging.CartPagingDTO;

//230808 동현 작성
public interface SCMyPageService {
	
	
	// 회원의 문의내역 조회
	public List<SCMyPageVO> selectQuestion(CartPagingDTO cartPagingDTO) ;
	
	//회원의 문의내역 갯수 조회
	public int getRowTotal();
	
	//문의 등록
	public int putQuesetion(HashMap<String, Object> questionMap);
	
	
	

	
}
