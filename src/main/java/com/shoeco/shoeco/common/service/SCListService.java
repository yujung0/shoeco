package com.shoeco.shoeco.common.service;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCListVO;
import com.shoeco.shoeco.common.paging.ListPagingDTO;

public interface SCListService {
	//1
	public List<SCListVO> getCategoryList(ListPagingDTO paging);
	//2
	public long rowTotal(ListPagingDTO paging);
	//3 range 최소
	public long MinPrice();
	//4 range 최대
	public long MaxPrice();

}
