package com.shoeco.shoeco.common.mapper;

public interface SCPaymentMapper {
	
//detail -> 결제	
	
	// 한번에 결제 했을때 생기는 sell_total  -->
	public int insertSellTotal() ;
	
	//해당 옵션 재고랑 감소  
	public int updateProdCount(); 
  
	// sell_total안에 구성요소 
	public int insertProdSell();





}
