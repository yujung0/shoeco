package com.shoeco.shoeco.common.service;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCOptionVO;
import com.shoeco.shoeco.common.domain.SCProductVO;

public interface SCDetailService {
	
	public List<SCOptionVO> getOption(long prodCodes);
	
	public List<SCOptionVO> getColor(long prodCodes);
	
	public List<SCOptionVO> getSize(long prodCodes);
	
	public List<SCProductVO> getProduct(long prodCode);
		
	

}
