<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/><%-- 
<sec:authentication property="principal" var="principal"/> --%>
 


<%@include file="./include/header.jsp" %>

    


    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">마이페이지</h1>
                <p>
                    구매내역
                </p>
                <p>
                    리뷰내역
                </p>
                <p>
                    마일리지
                </p>
                <p>
                    Q&A 내역
                </p>
                <p>
                    회원정보 수정
                </p>
                <p>
                    회원 탈퇴
                </p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->



<%@include file="./include/footer.jsp" %>

