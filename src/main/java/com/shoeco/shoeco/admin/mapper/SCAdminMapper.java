package com.shoeco.shoeco.admin.mapper;

import java.util.List;

import com.shoeco.shoeco.admin.model.SCCateVO;
import com.shoeco.shoeco.admin.model.SCShoesVO;

// 상품 등록 쿼리 실행
public interface SCAdminMapper {

	// 2309182058 장유정
	// 상품 등록
	public void shoesEnroll(SCShoesVO shoes);
	
	// 2309281604 장유정
	// 카테고리 리스트
	public List<SCCateVO> cateList();
}
