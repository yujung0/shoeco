package com.shoeco.shoeco.common.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.shoeco.shoeco.common.mapper.SCBrandMapper;
import com.shoeco.shoeco.common.model.SCBrandVO;

public class SCBrandServiceImpl implements SCBrandService  {

	// 2308181601 장유정
	@Autowired
	SCBrandMapper scBrandMapper;
	
	@Override
	public void brandEnroll(SCBrandVO brand) throws Exception {
		scBrandMapper.brandEnroll(brand);
	}
}

	

