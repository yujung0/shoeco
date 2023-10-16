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
import com.shoeco.shoeco.common.domain.SCRevVO;
import com.shoeco.shoeco.common.service.SCDetailService;
import com.shoeco.shoeco.common.service.SCRevService;

@Controller
//@RequestMapping("/detail")
public class SCDetailController {

	private SCDetailService scDetailService;
	private SCRevService scRevService;
	
	public SCDetailController(SCDetailService scDetailService, SCRevService scRevService) {
		this.scDetailService = scDetailService;
		this.scRevService = scRevService;
	}
	
	@GetMapping("/detail")
	public void showDetail(Model model,@RequestParam("prodCode") long prodCode){
		
		model.addAttribute("prodCode", prodCode);
		model.addAttribute("prodOption",scDetailService.getOption(prodCode));
		model.addAttribute("prodColor",scDetailService.getColor(prodCode));
		model.addAttribute("prodSize",scDetailService.getSize(prodCode));
		model.addAttribute("product",scDetailService.getProduct(prodCode));
		System.out.println("detail로가는 컨트롤러");
		
		//231010 리뷰 부분 추가 
		List<SCRevVO> revList = scRevService.getRevList(prodCode);
		model.addAttribute("revList",revList);
		float starAvg = 0f;
		
		if(revList.size() != 0) {
			int[] revSize= new int[5];
			int[] revColor = new int[3];
			int[] revWidth = new int[5];
			
			for(int i = 0 ; i < revList.size(); i ++) {
				starAvg += revList.get(i).getStarGrade();
				
				//인덱스 = 점수 -1
				revSize[revList.get(i).getRevSize() - 1] += 1;
				revColor[revList.get(i).getRevColor() - 1] += 1;
				revWidth[revList.get(i).getRevWidth() - 1] += 1;
				
			}
			
			starAvg /= revList.size();
			model.addAttribute("revSize",revSize);
			model.addAttribute("revColor",revColor);
			model.addAttribute("revWidth",revWidth);
		
		}else {
			starAvg = 0;
			model.addAttribute("revSize",-100);
			model.addAttribute("revColor",-100);
			model.addAttribute("revWidth",-100);
		
		}
		
		model.addAttribute("starAvg",starAvg);
		System.out.println(starAvg);
		 
		
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
