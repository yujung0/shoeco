package com.shoeco.shoeco.admin.service;

import java.util.List;

import com.shoeco.shoeco.admin.model.SCCateVO;
import com.shoeco.shoeco.admin.model.SCShoesVO;


public interface SCAdminService {

	// 2309192141 장유정
	// 상품 등록 ('상품 등록' mapper 메서드를 호출할 메서드)
	public void shoesEnroll(SCShoesVO shoes);
	
	// 2309282028 장유정
	// SCAdminMapper에 추가한 카테고리 매퍼 메서드를 호출할 메서드 선언부
	// 카테고리 리스트
	public List<SCCateVO> cateList();
	
	
	
}
