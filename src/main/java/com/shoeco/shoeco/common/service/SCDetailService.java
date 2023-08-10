package com.shoeco.shoeco.common.service;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCOptionVO;

public interface SCDetailService {
	
	public List<SCOptionVO> getOption(String prodCodes);

}
