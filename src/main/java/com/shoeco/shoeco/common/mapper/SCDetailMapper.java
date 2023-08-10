package com.shoeco.shoeco.common.mapper;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCOptionVO;

public interface SCDetailMapper {
	
	public List<SCOptionVO>  selectOption(String prodCode);

}

