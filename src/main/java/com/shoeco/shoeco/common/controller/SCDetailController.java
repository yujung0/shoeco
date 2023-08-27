package com.shoeco.shoeco.common.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shoeco.shoeco.common.domain.SCOptionVO;
import com.shoeco.shoeco.common.service.SCDetailService;

@Controller
//@RequestMapping("/detail")
public class SCDetailController {

	private SCDetailService scDetailService;
	
	public SCDetailController(SCDetailService scDetailService) {
		this.scDetailService = scDetailService;
	}
	
	@GetMapping("/detail")
	public void showDetail(Model model,@RequestParam("prodCode") long prodCode){
		
		model.addAttribute("prodCode", prodCode);
		model.addAttribute("prodOption",scDetailService.getOption(prodCode));
		model.addAttribute("prodColor",scDetailService.getColor(prodCode));
		model.addAttribute("prodSize",scDetailService.getSize(prodCode));
		model.addAttribute("product",scDetailService.getProduct(prodCode));
		System.out.println("detail로가는 컨트롤러");
	}
	
	//사이즈 별 재고 파익을 위한 ajax
	@ResponseBody 
	@GetMapping("/detail/sizePerColorAjax")
	public ResponseEntity<List<SCOptionVO>> showSizePerColor(
	        @RequestParam("prodCode") long prodCode, 
	        @RequestParam("color") String color) {

	    List<SCOptionVO> sizePerColor= scDetailService.getSizePerColor(prodCode, color);
	    
	    System.out.println(prodCode + " : " + color);
	    System.err.println("sizePerColor: " + sizePerColor.toString());
	    
	    

	    return new ResponseEntity<List<SCOptionVO>>(sizePerColor,HttpStatus.OK);
	}
	
	//val이 하나 씩 늘어날 때마다 selectedSize에 해당하는 하나의 재고수를 꺼내옴
	@ResponseBody 
	@GetMapping("/detail/oneSizePerColorAjax")
//	public  ResponseEntity<Boolean> showOneSizePerColor(
	public  ResponseEntity<HashMap<String, Object>> showOneSizePerColor(
	        @RequestParam("prodCode") long prodCode, 
	        @RequestParam("color") String color,@RequestParam("prodSizeStr") String prodSizeStr, @RequestParam("prodQuantityStr") String prodQuantityStr) {

	    int prodSize = Integer.parseInt(prodSizeStr);
	    long prodCount = scDetailService.getOneProdCount(prodCode, color, prodSize);
	    long prodQuantity  = Long.parseLong(prodQuantityStr);
	    
	    HashMap<String, Object> response = new HashMap<String, Object>();
	    
	    if(prodQuantity > prodCount ) {
	    	System.out.println("수량 부족");
	    	response.put("boolVal", false);
	    	response.put("prodCount", prodCount);
	    	return new ResponseEntity<>(response,HttpStatus.OK);	
	    	
	    }else {
	    	System.out.println("수량 안부족");
	    	response.put("boolVal", true);
	    	return new ResponseEntity<>(response,HttpStatus.OK);}	
	}
	
	
	


	
	


}
