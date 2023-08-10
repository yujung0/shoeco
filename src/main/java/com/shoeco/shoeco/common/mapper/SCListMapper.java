package com.shoeco.shoeco.common.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shoeco.shoeco.common.domain.SCListVO;
import com.shoeco.shoeco.common.paging.ListPagingDTO;

public interface SCListMapper {
//	private 

	public List<SCListVO> selectCategoryList(@Param("gender") String gender, @Param("paging") ListPagingDTO paging);
	
	public long selectRowTotal(@Param("gender") String gender, @Param("paging") ListPagingDTO paging) ;
	
	public Long selectMinPrice(@Param("gender") String gender, @Param("paging") ListPagingDTO paging);
	
	public Long selectMaxPrice(@Param("gender") String gender, @Param("paging") ListPagingDTO paging);
}
