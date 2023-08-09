package com.shoeco.shoeco.common.mapper;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCListVO;

public interface SCListMapper {
//	private 

	public List<SCListVO> selectCategoryList(String category);
	
	
}
