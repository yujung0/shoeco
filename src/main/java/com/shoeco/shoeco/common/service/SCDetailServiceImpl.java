package com.shoeco.shoeco.common.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.shoeco.shoeco.admin.domain.SCMemberVO;
import com.shoeco.shoeco.common.domain.SCOptionVO;
import com.shoeco.shoeco.common.domain.SCProductVO;
import com.shoeco.shoeco.common.mapper.SCDetailMapper;

@Service
@Primary
public class SCDetailServiceImpl implements SCDetailService {
	
	private SCDetailMapper scDetailMapper;
	
	public SCDetailServiceImpl(SCDetailMapper scDetailMapper) {
		this.scDetailMapper = scDetailMapper;
		
	}
	
	public List<SCOptionVO> getOption(long prodCode) {
		return scDetailMapper.selectOption(prodCode);
	}
	
	public List<SCOptionVO> getColor(long prodCode){
		return scDetailMapper.selectColor(prodCode);
	}
	
	public List<SCOptionVO> getSize(long prodCode){
		return scDetailMapper.selectSize(prodCode);
	}
	
	public List<SCOptionVO> getSizePerColor(@RequestParam("prodCode") long prodCode, @RequestParam("color") String color){
		return scDetailMapper.selectSizePerColor(prodCode, color);
	}
	
	public List<SCProductVO> getProduct(long prodCode){
		return scDetailMapper.selectProduct(prodCode);
	}
	
	public long getOneProdCount(@RequestParam("prodCode") long prodCode, @RequestParam("color") String color, @RequestParam("prodSize") long prodSize){
		return scDetailMapper.selectOneProdCount(prodCode,color,prodSize);
	}
	
	
	public List<SCMemberVO> getMember(String userId){
		return scDetailMapper.selectMember(userId);
	}
	
	
	
	
	

}
