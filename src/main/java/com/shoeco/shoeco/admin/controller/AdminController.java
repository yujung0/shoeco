package com.shoeco.shoeco.admin.controller;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shoeco.shoeco.admin.model.SCBrandVO;
import com.shoeco.shoeco.admin.model.SCCriteria;
import com.shoeco.shoeco.admin.model.SCPageDTO;
import com.shoeco.shoeco.admin.model.SCShoesVO;
import com.shoeco.shoeco.admin.service.SCAdminService;
import com.shoeco.shoeco.admin.service.SCBrandService;

@Controller
@RequestMapping("/admin")
	public class AdminController {
	 
	    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	    
	    @Autowired
	    private SCBrandService scBrandService; // 서비스 인터페이스를 의존성 주입
	    
	    // 2309192206 장유정 - 추가
	    @Autowired
	    private SCAdminService scAdminService;
	    
	    /* 관리자 메인 페이지 이동 */
	    @RequestMapping(value="main", method = RequestMethod.GET)
	    public void adminMainGET() throws Exception{
	        
	        logger.info("관리자 페이지 이동");
	        
	    }
	    
	    // 상품 관리 페이지 접속
	    @RequestMapping(value = "goodsManage", method = RequestMethod.GET)
	    public void goodsManageGet() throws Exception {
	    	logger.info("상품 등록 페이지 접속");
	    }
	    
	    // 상품 등록 페이지 접속
	    @RequestMapping(value = "goodsEnroll", method = RequestMethod.GET)
	    public void goodsEnrollGET(Model model) throws Exception {
	    	logger.info("상품 등록 페이지 접속");
	    	
	    	// 사용할 Jackson-databind의 메서드는 static 메서드가 아니기 때문에 바로 사용할 수는 없음. objectMapper 클래스를 인스턴스화 하여 사용해야 함. 따라서 objectMapper 타입의 'mapper' 변수를 선언한 후 objectMapper 객체로 초기화
	    	ObjectMapper objm = new ObjectMapper();
	    	
	    	// 2309282051 장유정
	    	// 카테고리 리스트 데이터를 'goodsEnroll.jsp'에 전달해주어야 하기 때문에, 해당 url 매핑 메서드에 카테고리 리스트 데이터를 반환하는 Service 메서드를 호출하여 List 타입의 변수 'list'에 저장
	    	List list= scAdminService.cateList();
	    	
	    	// java 객체를 String 타입의 JSON 형식 데이터로 변환
	    	String cateList = objm.writeValueAsString(list);
	    
	    	// 뷰로 데이터를 넘겨주기 위해서 URL 매핑 메서드의 파라미터에 model 을 부여해준 후 addAttribute()를 사용하여 cateList 속성에 String 타입의 cateList 변수의 값을 저장
	    	model.addAttribute("cateList", cateList);
	    	
	    	logger.info("JSON 형식 변경 전 - " + list);
	    	logger.info("JSON 형식 변경 후 - " + cateList);
	    }
	    
	    // 2309192209 장유정
	    // 상품 등록
	    @PostMapping("/goodsEnroll")
	    public String goodsEnrollPOST(SCShoesVO shoes, RedirectAttributes rttr) {
	    	
	    	logger.info("goodsEnrollPOST 실행 : " + shoes);
	    	
	    	scAdminService.shoesEnroll(shoes);
	    	
	    	rttr.addFlashAttribute("enroll_result", shoes.getProdName());
	    	
	    	return "redirect:/admin/goodsManage";
	    	
	    	// 상품 등록이 완료 되었음을 사용자에게 피드백 하기 위해 등록 후 상품 관리 페이지에 이동했을 때 경고창을 뜨도록 하기 위해,
	    	// redirectattribute 의 addflashattribute 메서드를 활용해 등록한 상품 이름을 enroll_result 속성에 저장
	    }
	    
	    // 2309201735 장유정
	    // 등록 페이지 브랜드 검색 팝업창 기능
	    @GetMapping("/brandPop")
	    public void brandPopGET(SCCriteria cri, Model model) throws Exception{ 
	    	logger.info("brandPopGET 실행");
	    	
	    	cri.setAmount(5); // 팝업창 크기가 작기 때문에 데이터 크기를 더 작은 단위로 변경 후 전송
	    	
	    	// 브랜드 목록 출력 데이터
	    	List list = scBrandService.brandGetList(cri);
	    	
	    	// 게시물 출력 데이터
	    	if(!list.isEmpty()) {
	    		model.addAttribute("list", list); //브랜드 존재함
	    	} else {
	    		model.addAttribute("listCheck", "empty"); // 브랜드 존재 x
	    	}
	    	
	    	// 페이지 이동 인터페이스 데이터
	    	model.addAttribute("pageMaker", new SCPageDTO(cri, scBrandService.brandGetTotal(cri)));
	    }
	    
	    
	    
	    // 브랜드 등록 페이지 접속 (author -> brand 대체)
	    @RequestMapping(value = "brandEnroll", method = RequestMethod.GET)
	    public void brandEnrollGET() throws Exception {
	        logger.info("브랜드 등록 페이지 접속");
	    }
	    
	    // 브랜드 관리 페이지 접속
	    @RequestMapping(value = "brandManage", method = RequestMethod.GET)
	    public void brandManageGET(SCCriteria cri, Model model) throws Exception {
	    
	    	logger.info("브랜드 관리 페이지 접속 - " + cri);
	    	
	    	// 브랜드 목록 출력 데이터
	    	List list = scBrandService.brandGetList(cri);
	    	
//	    	model.addAttribute("list", list);
	    	
	    	if(!list.isEmpty()) {
	    		model.addAttribute("list", list); //브랜드 존재함
	    	} else {
	    		model.addAttribute("listCheck", "empty"); // 브랜드 존재 x
	    	}
	    	
	    	// 페이지 이동 인터페이스 데이터
	    	int total = scBrandService.brandGetTotal(cri);
	    	
	    	SCPageDTO pageMaker = new SCPageDTO(cri, total);
	    	
	    	model.addAttribute("pageMaker", pageMaker);
	    }
	    
	    // 2308211425 장유정
	    // 브랜드 등록
		/* @ResponseBody */
	    @RequestMapping (value = "brandEnroll.do", method = RequestMethod.POST)
	    public String brandEnrollPOST(SCBrandVO brand, RedirectAttributes rttr) throws Exception { 

	        logger.info("brandEnroll : " + brand);

	        int maxBrandCode = scBrandService.getMaxBrandCode(); // 최대 브랜드 코드 조회
	        int nextBrandCode = Math.max(maxBrandCode + 1, 313); // 다음 브랜드 코드 설정

	        brand.setBrandCode(nextBrandCode); // 브랜드 코드 설정

	        Date now = new Date();
	        brand.setRegDate(now);
	        brand.setUpdateDate(now);

	        scBrandService.brandEnroll(brand); // 브랜드 등록 쿼리 수행

	        rttr.addFlashAttribute("enroll_result", brand.getBrandName()); // 등록 성공 메시지 (브랜드 이름)

	        return "redirect:/admin/brandManage";
    	}

	    // 2308291608 장유정
	    // 브랜드 상세 페이지
	    @GetMapping({"/brandDetail" , "/brandModify"})
	    public void brandGetInfoGET(int brandCode, SCCriteria cri, Model model) throws Exception {
	    // RedirectAttributes : 스프링 MVC 에서 리다이렉트 후에도 데이터를 유지하고 싶을 때 사용되는 인터페이스
	    	
	    	logger.info("brandDetail - " + brandCode);
	    	
	    	// 브랜드 관리 페이지 정보
	    	model.addAttribute("cri", cri);
	    	
	    	// 선택 브랜드 정보
	    	model.addAttribute("brandInfo", scBrandService.brandGetDetail(brandCode));
	    }
	    
	    
	    // 2309071348 장유정
	    // 브랜드 정보 수정
	    @PostMapping ("/brandModify")
	    public String brandModifyPOST(SCBrandVO brand, RedirectAttributes rttr) throws Exception {
	    	
	    	logger.info("brandModifyPOST (컨트롤러) : " + brand);
	    	
	    	int result = scBrandService.brandModify(brand);
	    	
	    	rttr.addFlashAttribute("modify_result", result); // addFlashAttribute : 리다이렉트 시, 데이터를 세션에 저장하고 이후 리다이렉트 된 페이지에서 이 데이터를 읽어올 수 있게 함. 주로, 리다이렉트 후에 사용자에게 메시지를 표시
	    	
	    	return "redirect:/admin/brandManage";
	    }
	    
	
	}	 

