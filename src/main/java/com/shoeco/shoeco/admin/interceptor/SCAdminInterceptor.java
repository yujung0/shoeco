package com.shoeco.shoeco.admin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.shoeco.shoeco.admin.domain.SCMemberVO;

// 2308172252 장유정 - 인터셉터
public class SCAdminInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {

    	System.out.println("SCAdminInterceptor 진입");
    	
        HttpSession session = request.getSession();

        SCMemberVO lvo = (SCMemberVO) session.getAttribute("member");

        if (lvo == null || lvo.getAdminck() == 0) { // 관리자 계정이 아닌 경우
            response.sendRedirect("/shoeco/main"); // 메인페이지로 리다이렉트
            return false;
        }

        return true; // 관리자 계정 로그인 경우 (lvo != null && lvo.getAdminck() == 1)
    }
}
