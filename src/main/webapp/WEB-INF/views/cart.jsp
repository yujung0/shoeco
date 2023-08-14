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
        <div class="row text-left pt-3">
            <div class="col-lg-10 m-auto">
                <h1 class="h1">장바구니 목록</h1>				
				<table class="table table-hover">
					<thead style="text-align: center;">
						<tr class="table-dark">
							<th>상품</th>
							<th>사이즈</th>
							<th>색상</th>
							<th>갯수</th>
							<th>가격</th>
							<th>선택</th>
						</tr>
					</thead>
					<tbody style="text-align: center;">
						<c:forEach var="cartItem" items="${cartList}">
							<tr class="text-secondary-emphasis">
								<td><img class="img-fluid" src="./resources/img/white_test.jpg" alt="" width="100" height="100">${cartItem.prodName}</td>
								<td>${cartItem.prodSize}</td>
								<td>${cartItem.color}</td>
								<td>${cartItem.cartCount}</td>
								<td>${cartItem.price}</td>
								<td><input type="checkbox"></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->


<%@include file="./include/footer.jsp" %>

