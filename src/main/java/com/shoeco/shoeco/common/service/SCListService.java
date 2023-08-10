package com.shoeco.shoeco.common.service;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCListVO;
import com.shoeco.shoeco.common.paging.ListPagingDTO;

public interface SCListService {
	
	public List<SCListVO> getCategoryList(ListPagingDTO paging);
	
	public long rowTotal(ListPagingDTO paging);

}
