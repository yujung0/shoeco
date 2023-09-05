package com.shoeco.shoeco.common.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.shoeco.shoeco.admin.domain.SCMemberVO;
import com.shoeco.shoeco.common.domain.SCOptionVO;
import com.shoeco.shoeco.common.domain.SCProductVO;

public interface SCDetailService {
	
	public List<SCOptionVO> getOption(long prodCodes);
	
	public List<SCOptionVO> getColor(long prodCodes);
	
	public List<SCOptionVO> getSize(long prodCodes);
	
	public List<SCOptionVO> getSizePerColor(long prodCodes, String color);
	
	public List<SCProductVO> getProduct(long prodCode);
	
	public long getOneProdCount( long prodCode,  String color, long prodSize); 
		
	public List<SCMemberVO> getMember(String userId) ;

}
