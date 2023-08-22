package com.shoeco.shoeco.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.mapper.SCBrandMapper;
import com.shoeco.shoeco.common.model.SCBrandVO;

@Service
@Primary // @Primary 어노테이션을 사용하여 우선적으로 주입할 빈을 지정
public class SCBrandServiceImpl implements SCBrandService  {

	// 2308181601 장유정
	@Autowired
	SCBrandMapper scBrandMapper;
	
	@Override
	public void brandEnroll(SCBrandVO brand) throws Exception {
		scBrandMapper.brandEnroll(brand);
	}
}

	

