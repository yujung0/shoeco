package com.shoeco.shoeco.admin.service;

import com.shoeco.shoeco.admin.model.SCShoesVO;


public interface SCAdminService {

	// 2309192141 장유정
	// 상품 등록 ('상품 등록' mapper 메서드를 호출할 메서드)
	public void shoesEnroll(SCShoesVO shoes);
	
}
