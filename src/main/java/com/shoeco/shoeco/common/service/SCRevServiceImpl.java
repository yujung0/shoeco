package com.shoeco.shoeco.common.service;

import java.util.List;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.domain.SCRevVO;
import com.shoeco.shoeco.common.mapper.SCRevMapper;

@Service
@Primary
public class SCRevServiceImpl implements SCRevService{

	private SCRevMapper scRevMapper;
	
	public SCRevServiceImpl(SCRevMapper scRevMapper) {
		this.scRevMapper = scRevMapper;
	}
	
	//revList뽑기
	public List<SCRevVO> getRevList(long prodCode){
		return scRevMapper.selectRevList(prodCode);
	}
	
	
	
}
