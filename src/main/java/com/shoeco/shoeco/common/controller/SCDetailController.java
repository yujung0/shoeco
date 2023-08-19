package com.shoeco.shoeco.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		model.addAttribute("prodOption",scDetailService.getOption(prodCode));
		model.addAttribute("prodColor",scDetailService.getColor(prodCode));
		model.addAttribute("prodSize",scDetailService.getSize(prodCode));
		model.addAttribute("product",scDetailService.getProduct(prodCode));
		System.out.println("detail로가는 컨트롤러");
	}
	
	//prodCode 별로 detail 에 있는 option의 list를 꺼내려고 함 

	
	


}
