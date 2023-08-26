package com.shoeco.shoeco.common.service;

import java.util.List;

import com.shoeco.shoeco.common.model.SCBrandVO;
import com.shoeco.shoeco.common.model.SCCriteria;

public interface SCBrandService {

	// 2308181555 장유정
	// 브랜드 등록
	public void brandEnroll(SCBrandVO brand) throws Exception;
	
	// 브랜드 목록
	public List<SCBrandVO> brandGetList(SCCriteria cri) throws Exception;
	
	
	
	
	
}
