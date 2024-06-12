package com.shoeco.shoeco.common.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.shoeco.shoeco.common.domain.SCListVO;
import com.shoeco.shoeco.common.paging.ListPagingDTO;

public interface SCListService {
	//1
	public List<SCListVO> getCategoryList(@RequestParam("paging") ListPagingDTO paging);
	//2
	public long rowTotal(@RequestParam("paging") ListPagingDTO paging);
	//3 range 최소
	public Long MinPrice(@RequestParam("paging") ListPagingDTO paging);
	//4 range 최대
	public Long MaxPrice(@RequestParam("paging") ListPagingDTO paging);

	//5 조건 검색시 값이 안나올때 다시 range이용할때 표시할 최대값 
	public Long totalMaxPrice();
}
