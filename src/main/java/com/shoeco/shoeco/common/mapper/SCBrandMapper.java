package com.shoeco.shoeco.common.mapper;

import java.util.List;

import com.shoeco.shoeco.common.model.SCBrandVO;
import com.shoeco.shoeco.common.model.SCCriteria;

public interface SCBrandMapper {

	// 2308181539 장유정 
	//브랜드 등록
	public void brandEnroll(SCBrandVO brand);
	
	 // 가장 큰 브랜드 코드 조회
    int getMaxBrandCode();
    
    // 작가 목록
    public List<SCBrandVO> brandGetList(SCCriteria cri);
}
