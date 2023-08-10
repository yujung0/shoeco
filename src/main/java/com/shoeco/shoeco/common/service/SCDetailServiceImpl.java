package com.shoeco.shoeco.common.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.mapper.SCDetailMapper;

@Service
@Primary
public class SCDetailServiceImpl implements SCDetailService {
	
	private SCDetailMapper scDetaMapper;
	
	public SCDetailServiceImpl(SCDetailMapper scDetailMapper) {
		this.scDetaMapper = scDetailMapper;
		
	}
	
	
	
	
	
	

}
