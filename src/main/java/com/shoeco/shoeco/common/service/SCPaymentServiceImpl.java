package com.shoeco.shoeco.common.service;

import java.util.List;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.shoeco.shoeco.common.domain.SCOrderList;
import com.shoeco.shoeco.common.mapper.SCPaymentMapper;

@Service
@Primary
public class SCPaymentServiceImpl implements SCPaymentService{

	private SCPaymentMapper scPaymentMapper;
	
	public SCPaymentServiceImpl(SCPaymentMapper scPaymentMapper) {
		this.scPaymentMapper = scPaymentMapper;
	}
	
	
	@Override
	public int insertSellTotal(String userId,long usedMileage) {
		return scPaymentMapper.insertSellTotal(userId, usedMileage);
	}

	@Override
	public int updateProdCount(List<SCOrderList> scOrderList) {
		return scPaymentMapper.updateProdCount(scOrderList);
	}

	@Override
	public int insertProdSell(String userId,List<SCOrderList> scOrderList) {
		return scPaymentMapper.insertProdSell(userId,scOrderList);
	}

	@Override
	public long getProdStock(long prodOptionNo) {
		return scPaymentMapper.selectProdStock(prodOptionNo);
	}
	
	@Override
	public int updateMileage(String userId,long usedMileage) {
		return scPaymentMapper.updateMileage(userId, usedMileage);
	}
	
	 
//detail -> 결제
	
	 
	
	
}
