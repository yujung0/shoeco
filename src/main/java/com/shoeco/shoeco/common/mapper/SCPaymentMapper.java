package com.shoeco.shoeco.common.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;

import com.shoeco.shoeco.common.domain.SCOrderList;

public interface SCPaymentMapper {
	
//detail -> 결제	
	// 한번에 결제 했을때 생기는 sell_total  -->
	
	@Transactional
	public int insertSellTotal(@Param("userId")String userId,@Param("usedMileage") long usedMileage) ;
	
	//해당 옵션 재고랑 감소  
	@Transactional
	public int updateProdCount(@Param("scOrderList") List<SCOrderList> scOrderList); 
  
	// sell_total안에 구성요소 
	@Transactional
	public int insertProdSell(@Param("userId") String userId, @Param("scOrderList") List<SCOrderList> scOrderList);

	public long selectProdStock(long prodOptionNo) ;

	@Transactional
	public int updateMileage(@Param("userId")String userId,@Param("usedMileage") long usedMileage) ;
	
	




}
