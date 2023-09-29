package com.shoeco.shoeco.common.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.inject.internal.util.Strings;
import com.shoeco.shoeco.common.domain.SCOrderList;
import com.shoeco.shoeco.common.service.SCDetailService;
import com.shoeco.shoeco.common.service.SCPaymentService;

@Controller
public class SCPaymentController {

	SCPaymentService scPaymentService ;
	SCDetailService scDetailService;
	List<SCOrderList> scOrderList;
	
	/*SCPaymentController(SCPaymentService scPaymentService, SCDetailService scDetailService){
		this.scPaymentService = scPaymentService;
		this.scDetailService = scDetailService;
	}
	*/
	SCPaymentController(SCPaymentService scPaymentService, SCDetailService scDetailService, List<SCOrderList> scOrderList){
		this.scPaymentService = scPaymentService;
		this.scDetailService = scDetailService;
		this.scOrderList = scOrderList;
	}
	
	//countStr : 한줄당가격, countStr2 : 수량
	@GetMapping(value="/orderPage") 
//    @PreAuthorize("isAuthenticated()") 시큐리티가 아니라 안먹음 , 새로운 법 강구, 이전 페이지에서 로그인 팝업 뜨게 하기 
	public void showOrderPage(Model model,
								@RequestParam("prodCode") String prodCode,
								@RequestParam("optionNoStr") String optionNoStr,
								@RequestParam("countStr") String countStr,
								@RequestParam("countStr2") String countStr2) {
		
		System.out.println("주문 페이지 접근");

		
		String[] optionNoArray = optionNoStr.split(",");
		String[] countArray = countStr.split(",");
		String[] countArray2 = countStr2.split(",");
		long prodCode2 = Long.parseLong(prodCode);
		long totalPrice = 0;
		String name = "";
		int amount = 0; //물건 총수량
		
		List<SCOrderList> orderList = new ArrayList<>();
		 for(int i = 0 ; i < optionNoArray.length ; i ++) {
			 	orderList.add(new SCOrderList(prodCode2, optionNoArray[i], countArray[i], countArray2[i]) );
			 	totalPrice += Long.parseLong(countArray[i]);
			 	amount += Integer.parseInt(countArray2[i]);
			 	  
		 }
		 name = "제품코드: "+orderList.get(0).getProdCode()+"/" + "옵션: " +(optionNoArray.length)  +"개/ 총 수량: "+ amount + "개" ;
		 this.scOrderList = orderList;
		 model.addAttribute("orderList",orderList);
		 model.addAttribute("orderBrand",scDetailService.getProduct(prodCode2).get(0)); //한 prodCode에 대해서만 나오는 brandCode
		 model.addAttribute("totalPrice",totalPrice);
		 model.addAttribute("name",name);
		 model.addAttribute("totalAmount",amount);
		//현재 로그인한 사용자의 Id값 ->일단 admin으로 적용시키기/ContextHolder는 나중문제 
		 
		
		String userId = "admin" ;
		 
		model.addAttribute("user",scDetailService.getMember(userId));
//		System.out.println(scDetailService.getMember(username).get(0).getUserAddress2());
		 
	}
	// uid
	@PostMapping(value="/payment/before")
	@ResponseBody
	public Map<String, String> getUid() {
		Date myDate = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		String uid = simpleDateFormat.format(myDate);
		int ranNum = new Random().nextInt(999999-100000) + 100000;
		uid+="-"+ranNum ;
		Map<String,String> response = new HashMap<>();
		response.put("uid", uid);
		
		return response;
	}
	
	
	//
	
	@PostMapping(value="/payment")
	@ResponseBody
	public void executePay(@RequestParam long usedMileage) {

		String userId = "admin" ;
		boolean stockFlag = true;
		
		 for(int i = 0 ; i < scOrderList.size() ; i ++) {
			 	 if((scPaymentService.getProdStock(scOrderList.get(i).getProdOptionNo()) - scOrderList.get(i).getRowCount() )< 0 ) {
			 		 System.err.println((scPaymentService.getProdStock(scOrderList.get(i).getProdOptionNo()) - scOrderList.get(i).getRowCount() ) + " : 0보다 작음");
			 		 stockFlag = false;
			 	 }
		 }
		
		 if(stockFlag) {
		
		scPaymentService.insertSellTotal(userId,usedMileage); 
		scPaymentService.updateMileage(userId,usedMileage); 
		scPaymentService.updateProdCount(scOrderList);
		scPaymentService.insertProdSell(userId,scOrderList); 
		
		
		 }
		
		
	}
	
	
	
	
	
}
