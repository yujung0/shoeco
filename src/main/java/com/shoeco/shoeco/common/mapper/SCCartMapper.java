package com.shoeco.shoeco.common.mapper;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCCartVO;
import com.shoeco.shoeco.common.paging.CartPagingDTO;

public interface SCCartMapper {
	
	
    // 회원의 장바구니 목록 조회
    public List<SCCartVO> selectCartList();
    
    // 회원의 장바구니 목록 조회(페이징 구현중)
//    public List<SCCartVO> selectCartList(CartPagingDTO cartPagingDTO);
}
