package com.shoeco.shoeco.common.service;

import java.util.List;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.domain.SCOptionVO;
import com.shoeco.shoeco.common.mapper.SCDetailMapper;

@Service
@Primary
public class SCDetailServiceImpl implements SCDetailService {
	
	private SCDetailMapper scDetailMapper;
	
	public SCDetailServiceImpl(SCDetailMapper scDetailMapper) {
		this.scDetailMapper = scDetailMapper;
		
	}
	
	public List<SCOptionVO> getOption(String prodCode) {
		return scDetailMapper.selectOption(prodCode);
	}
	
	
	
	
	
	

}
