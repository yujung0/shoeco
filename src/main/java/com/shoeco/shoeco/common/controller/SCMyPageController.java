package com.shoeco.shoeco.common.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shoeco.shoeco.common.domain.SCMyPageVO;
import com.shoeco.shoeco.common.paging.CartPagingCreatorDTO;
import com.shoeco.shoeco.common.paging.CartPagingDTO;
import com.shoeco.shoeco.common.service.SCMyPageService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
@RequestMapping("/mypage")
public class SCMyPageController {
    
    private final SCMyPageService myPageService;
    
    @GetMapping
    public String showMypage(Model model) {
        
        return "/mypage";
    }
    
    //문의내역 조회
    @GetMapping("/question")
    @ResponseBody
    public Map<String, Object> getQuestionList(@RequestParam(defaultValue = "1") int pageNum) {
        Map<String, Object> resultMap = new HashMap<>();
        
        // 문의내역 데이터와 페이징 정보를 가져와서 resultMap에 저장
        List<SCMyPageVO> questionList = myPageService.selectQuestion(new CartPagingDTO(pageNum));
        long rowTotal = myPageService.getRowTotal();
        CartPagingCreatorDTO cartPagingCreatorDTO = new CartPagingCreatorDTO(rowTotal, new CartPagingDTO(pageNum));
        
        resultMap.put("questionList", questionList);
        resultMap.put("pagingCreator", cartPagingCreatorDTO);
        
        return resultMap;
    }
    
    //문의 등록
    @ResponseBody
    @PostMapping("/register")
    public void registerQuestion(@RequestParam HashMap<String, Object> questionMap) {
        // questionMap에는 qnaQTitle과 qnaQContent가 들어있습니다.
        // 이 정보를 이용하여 문의 등록 로직 수행
        myPageService.putQuesetion(questionMap);
    }
    
    //문의내용 수정
    @ResponseBody
    @PostMapping("/modify")
    public void updateContent(@RequestParam HashMap<String, Object> modifyMap) {
        
        
        myPageService.modifyContent(modifyMap);
    }
    
    //회원의 리뷰내역 조회
    @ResponseBody
    @GetMapping("/review")
    public Map<String, Object> selectReview(@RequestParam(defaultValue = "1") int pageNum) {
        
    	Map<String, Object> resultMap = new HashMap<>();
        
        // 문의내역 데이터와 페이징 정보를 가져와서 resultMap에 저장
        List<SCMyPageVO> reviewList = myPageService.showReview(new CartPagingDTO(pageNum));
        long revTotal = myPageService.getRevTotal();
        CartPagingCreatorDTO cartPagingCreatorDTO = new CartPagingCreatorDTO(revTotal, new CartPagingDTO(pageNum));
        
        resultMap.put("reviewList", reviewList);
        resultMap.put("pagingCreator", cartPagingCreatorDTO);
        
        return resultMap;
    }
    	
    
}
