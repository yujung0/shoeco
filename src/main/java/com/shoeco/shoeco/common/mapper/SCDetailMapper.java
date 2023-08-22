package com.shoeco.shoeco.common.mapper;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCOptionVO;
import com.shoeco.shoeco.common.domain.SCProductVO;

public interface SCDetailMapper {
	
	public List<SCOptionVO> selectOption(long prodCode);
	
	public List<SCOptionVO> selectColor(long prodCode);

	public List<SCOptionVO> selectSize(long prodCode);
	
	public List<SCOptionVO> selectSizePerColor(long prodCode, String color);

	public List<SCProductVO> selectProduct(long prodCode);
	
}

