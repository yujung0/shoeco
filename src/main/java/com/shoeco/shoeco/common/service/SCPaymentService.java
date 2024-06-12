package com.shoeco.shoeco.common.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.shoeco.shoeco.common.domain.SCOrderList;

public interface SCPaymentService {
	
//detail -> 결제
	// 한번에 결제 했을때 생기는 sell_total  -->
	public int insertSellTotal(@RequestParam("usedId")String userId, @RequestParam("usedMileage")long usedMileage, @RequestParam("mid") String mid) ;
	
	//해당 옵션 재고랑 감소  
	public int updateProdCount(@RequestParam("scOrderList") List<SCOrderList> scOrderList); 
  
	// sell_total안에 구성요소 
	public int insertProdSell(@RequestParam("userId") String userId, @RequestParam("scOrderList") List<SCOrderList> scOrderList);

	public long getProdStock(long prodOptionNo);
	//마일리지 차감 user
	public int updateMileage(@RequestParam("usedId")String userId, @RequestParam("usedMileage")long usedMileage);

}
