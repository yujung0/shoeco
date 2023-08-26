<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/><%-- 
<sec:authentication property="principal" var="principal"/> --%>
   
<%@ include file="/WEB-INF/views/include/adminHeader.jsp" %>
                
                
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>상품 등록</span></div>
                </div>
                <div class="clearfix"></div>
            </div>
               
    </div>    <!-- class="wrap" -->
</div>    <!-- class="wrapper" -->


<%@ include file="/WEB-INF/views/include/adminFooter.jsp" %>  
