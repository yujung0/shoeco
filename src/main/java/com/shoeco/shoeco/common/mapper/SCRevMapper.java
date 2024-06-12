package com.shoeco.shoeco.common.mapper;

import java.util.List;

import com.shoeco.shoeco.common.domain.SCRevVO;

public interface SCRevMapper {
	
	// revList 뽑기
	public List<SCRevVO> selectRevList(long prodCode);

	//rev 좋아요 + 1 
	public int updateRevLikeP(long revNo);
	
	//rev 좋아요 - 1 
	public int updateRevLikeM(long revNo);
	
	//rev 신고하기
	public int updateRevDelFlag(long revNo);
	
	//rev수정
	public int updateRevMod(SCRevVO rev);
	
	// rev삭제 
	public int deleteRev(long revNo);
	
	//rev 남기기 : detail페이지가 아닌 구매한 내역에서 남기게 할 것 
	public int insertBuyRev(SCRevVO rev);
	
	
}
