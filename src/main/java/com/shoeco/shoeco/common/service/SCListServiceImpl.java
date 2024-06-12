package com.shoeco.shoeco.common.service;

import java.util.List;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.domain.SCListVO;
import com.shoeco.shoeco.common.mapper.SCListMapper;
import com.shoeco.shoeco.common.paging.ListPagingDTO;

@Service
@Primary
public class SCListServiceImpl implements SCListService{
	
	private SCListMapper scListMapper ;
	//생성자 주입
	public SCListServiceImpl(SCListMapper scListMapper){
		this.scListMapper = scListMapper  ;
	} 
	
	public List<SCListVO> getCategoryList(ListPagingDTO paging){
		return scListMapper.selectCategoryList(paging);
	}
	
	public long rowTotal(ListPagingDTO paging){
		return scListMapper.selectRowTotal(paging);
	}

	public Long MinPrice(ListPagingDTO paging){
		return scListMapper.selectMinPrice(paging);
	};

	public Long MaxPrice(ListPagingDTO paging){
		return scListMapper.selectMaxPrice(paging);
	};

	public Long totalMaxPrice() {
		return scListMapper.selecTotalMaxPrice();
				
	}

}
