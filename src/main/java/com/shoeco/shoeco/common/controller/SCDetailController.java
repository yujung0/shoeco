package com.shoeco.shoeco.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//@RequestMapping("/detail")
public class SCDetailController {

	@GetMapping("/detail")
	public void showDetail(){
		
		
		System.out.println("detail로가는 컨트롤러");
	}
	


	
	


}
