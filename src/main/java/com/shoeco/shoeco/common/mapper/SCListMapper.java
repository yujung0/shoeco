package com.shoeco.shoeco.common.mapper;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCListVO;
import com.shoeco.shoeco.common.paging.ListPagingDTO;

public interface SCListMapper {
//	private 

	public List<SCListVO> selectCategoryList(ListPagingDTO paging);
	
	public long rowTotal(ListPagingDTO paging);
}
