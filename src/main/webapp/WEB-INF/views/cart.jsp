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
                <h1 class="h1">장바구니 목록</h1>
                <p>
                    상품명: ${cartList[0].prodName}
                </p>
                <p>
                    상품 사이즈: ${cartList[0].prodSize}
                </p>
                <p>
                    상품 색상: ${cartList[0].color}
                </p>
                <p>
                    상품 갯수: ${cartList[0].cartCount}
                </p>
                <p>
                    상품 가격: ${cartList[0].price}원
                </p>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->



<%@include file="./include/footer.jsp" %>

