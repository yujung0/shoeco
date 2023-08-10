package com.shoeco.shoeco.common.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.shoeco.shoeco.common.domain.SCListVO;
import com.shoeco.shoeco.common.paging.ListPagingDTO;

public interface SCListService {
	//1
	public List<SCListVO> getCategoryList(@RequestParam("gender") String gender, @RequestParam("paging") ListPagingDTO paging);
	//2
	public long rowTotal(@RequestParam("gender") String gender, @RequestParam("paging") ListPagingDTO paging);
	//3 range 최소
	public Long MinPrice(@RequestParam("gender") String gender, @RequestParam("paging") ListPagingDTO paging);
	//4 range 최대
	public Long MaxPrice(@RequestParam("gender") String gender, @RequestParam("paging") ListPagingDTO paging);

}
