package com.shoeco.shoeco.common.mapper;

import com.shoeco.shoeco.common.model.SCBrandVO;

public interface SCBrandMapper {

	// 2308181539 장유정 
	//브랜드 등록
	public void brandEnroll(SCBrandVO brand);
	
	 // 가장 큰 브랜드 코드 조회
    int getMaxBrandCode();
}
