package com.shoeco.shoeco.common.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.mapper.SCPaymentMapper;

@Service
@Primary
public class SCPaymentServiceImpl implements SCPaymentService{

	private SCPaymentMapper scPaymentMapper;
	
	public SCPaymentServiceImpl(SCPaymentMapper scPaymentMapper) {
		this.scPaymentMapper = scPaymentMapper;
	}
	
	@Override
	public int insertSellTotal() {
		return scPaymentMapper.insertSellTotal();
	}

	@Override
	public int updateProdCount() {
		return scPaymentMapper.updateProdCount();
	}

	@Override
	public int insertProdSell() {
		return scPaymentMapper.insertProdSell();
	}

//detail -> 결제
	
	 
	
	
}
