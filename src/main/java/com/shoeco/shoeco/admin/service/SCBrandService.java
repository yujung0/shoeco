package com.shoeco.shoeco.admin.service;

import java.util.List;

import com.shoeco.shoeco.admin.model.SCBrandVO;
import com.shoeco.shoeco.admin.model.SCCriteria;

public interface SCBrandService {

	// 2308181555 장유정
	// 브랜드 등록
	public void brandEnroll(SCBrandVO brand) throws Exception;
	
	// 브랜드 목록
	public List<SCBrandVO> brandGetList(SCCriteria cri) throws Exception;
	
	// 브랜드 총 수 
	public int brandGetTotal(SCCriteria cri) throws Exception;
	
	
	
}
