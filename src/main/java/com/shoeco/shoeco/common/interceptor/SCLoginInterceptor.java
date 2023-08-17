package com.shoeco.shoeco.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.handler.Handler;

import org.springframework.web.servlet.HandlerInterceptor;

public class SCLoginInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) 
		throws Exception {
		
		System.out.println("SCLoginInterceptor preHandle 작동");
		
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return true;
		}
	
}
