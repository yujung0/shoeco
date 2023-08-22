package com.shoeco.shoeco.common.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.domain.SCMyPageVO;
import com.shoeco.shoeco.common.mapper.SCMyPageMapper;
import com.shoeco.shoeco.common.paging.CartPagingDTO;

import lombok.AllArgsConstructor;

//230808 동현 작성
@Service
@AllArgsConstructor
@Primary
public class SCMyPageServiceImpl implements SCMyPageService{
	
	private SCMyPageMapper myPageMapper;
	
	// 회원의 문의내역 조회
	public List<SCMyPageVO> selectQuestion(CartPagingDTO cartPagingDTO){
		
		return myPageMapper.selectQuestionList(cartPagingDTO);
	}
	
	//회원의 문의내역 갯수 조회
	public int getRowTotal() {
		
		return myPageMapper.selectRowTotal();
	}
	
	//문의 등록
	public int putQuesetion(HashMap<String, Object> questionMap) {
		
		return myPageMapper.insertQuestion(questionMap);
	}
	
	//문의내용 수정
	public int modifyContent(HashMap<String, Object> modifyMap) {
		
		return myPageMapper.updatecontent(modifyMap);
	}
}
