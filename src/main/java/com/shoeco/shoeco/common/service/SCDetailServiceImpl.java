package com.shoeco.shoeco.common.service;

import java.util.List;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.domain.SCOptionVO;
import com.shoeco.shoeco.common.domain.SCProductVO;
import com.shoeco.shoeco.common.mapper.SCDetailMapper;

@Service
@Primary
public class SCDetailServiceImpl implements SCDetailService {
	
	private SCDetailMapper scDetailMapper;
	
	public SCDetailServiceImpl(SCDetailMapper scDetailMapper) {
		this.scDetailMapper = scDetailMapper;
		
	}
	
	public List<SCOptionVO> getOption(long prodCode) {
		return scDetailMapper.selectOption(prodCode);
	}
	
	public List<SCOptionVO> getColor(long prodCode){
		return scDetailMapper.selectColor(prodCode);
	}
	
	public List<SCOptionVO> getSize(long prodCode){
		return scDetailMapper.selectSize(prodCode);
	}
	
	public List<SCOptionVO> getSizePerColor(long prodCode, String color){
		return scDetailMapper.selectSize(prodCode);
	}
	
	public List<SCProductVO> getProduct(long prodCode){
		return scDetailMapper.selectProduct(prodCode);
	}
	
	
	
	
	
	

}
