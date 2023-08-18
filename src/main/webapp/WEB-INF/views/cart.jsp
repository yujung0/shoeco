<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/><%-- 
<sec:authentication property="principal" var="principal"/> --%>
 


<%@include file="./include/header.jsp" %>

<style>
    .no-pointer-events {
        pointer-events: none;
    }
    .hide-row {
        display: none;
    }
    table {
        border-collapse: collapse; /* 테두리를 합침 */
        width: 100%;
    }
    table, th, td {
        border: none; /* 테두리를 제거 */
    }
</style>
    

<div id="page-wrapper">
    <!-- Start Categories of The Month -->
    <section class="container py-5">
    	<div class="row text-left pt-3">
            <div class="col-lg-10 m-auto"><!-- 	
      		<h1 class="h1">장바구니</h1> -->		
				<table class="table table-hover">
					<thead style="text-align: center;">
						<tr class="table-dark">
							<th>선택</th>
							<th></th>
							<th>상품</th>
							<th>사이즈</th>
							<th>색상</th>
							<th>수량</th>
							<th>가격</th>
						</tr>
					</thead>
					<tbody style="text-align: center;">
						<c:set var="totalPrice" value="0" />
						<c:forEach var="cartItem" items="${cartList}" varStatus="loop">
						    <tr class="text-secondary-emphasis">
						        <td><input type="checkbox" id="checkBox_${loop.index}" onchange="calculateTotalPrice()"></td>
						        <td><img class="img-fluid" src="${contextPath}/resources/img/white_test.jpg" alt="" width="100" height="100"></td>
						        <td>${cartItem.prodName}</td>
						        <td>${cartItem.prodSize}</td>
						        <td>${cartItem.color}</td>
						        <td>${cartItem.cartCount}</td>
						        <td>
								    <fmt:formatNumber value="${cartItem.price}" type="currency" currencyCode="KRW" />
								</td>

						    </tr>
						    <c:set var="totalPrice" value="${totalPrice + cartItem.price * cartItem.cartCount}" />
						</c:forEach>
					</tbody>
					<tbody style="text-align: center; border-bottom: none;">
					    <tr class="no-pointer-events" style="border: none;">
					        <td colspan="2"></td>
					        <td colspan="2">
							    <p style="text-align: center;">
							        <span style="font-size: 24px; font-weight: bold;">총 결제금액: </span>
							        <span id="totalPrice" style="font-size: 24px; font-weight: bold;">₩0</span>
							    </p>
							</td>
							<td></td>
							<td>
							    <p style="text-align: center;">
							        <button class="btn btn-success" onclick="performPayment()">결제</button>
							    </p>
							</td>
					    </tr>
					</tbody>
				</table>
            </div>
        </div>
    </section>
    <!-- End Categories of The Month -->

	<%-- Pagination 시작 --%>
	<div style="text-align: center;">
    	<ul class="pagination justify-content-center">
	        <c:if test="${pagingCreator.prev}">
	            <li class="page-item">
	                <a class="page-link" href="${contextPath}/cart/1" aria-label="Previous">
	                    <span aria-hidden="true">&laquo;</span>
	                </a>
	            </li>
	        </c:if>
	        <c:if test="${pagingCreator.prev}">
	            <li class="page-item">
	                <a class="page-link" href="${contextPath}/cart/${pagingCreator.startNum - 1}" aria-label="Previous">
	                    <span aria-hidden="true">이전</span>
	                </a>
	            </li>
	        </c:if>
	        
	        <c:forEach var="pageNum" begin="${pagingCreator.startNum}" end="${pagingCreator.endNum}" step="1">
	            <li class="page-item ${pagingCreator.cartPagingDTO.pageNum == pageNum ? 'active' : ''}">
	                <a class="page-link" href="${contextPath}/cart/${pageNum}">${pageNum}</a>
	            </li>
	        </c:forEach>
	            
	        <c:if test="${pagingCreator.next}">
	            <li class="page-item">
	                <a class="page-link" href="${contextPath}/cart/${pagingCreator.endNum + 1}" aria-label="Next">
	                    <span aria-hidden="true">다음</span>
	                </a>
	            </li>
	        </c:if>
	        <c:if test="${pagingCreator.next}">
	            <li class="page-item">
	                <a class="page-link" href="${contextPath}/cart/${pagingCreator.lastNum}" aria-label="Next">
	                    <span aria-hidden="true">&raquo;</span>
	                </a>
	            </li>
	        </c:if>
	    </ul>
	</div><!-- Pagination - end -->    
</div><!-- page-wrapper - end -->

<script>

	function formatCurrency(amount) {
	    return new Intl.NumberFormat('ko-KR', { style: 'currency', currency: 'KRW' }).format(amount);
	}
	
	function calculateTotalPrice() {
	    var totalPrice = 0;
	    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
	    
	    checkboxes.forEach(function(checkbox, index) {
	        if (checkbox.checked) {
	            var price = parseInt('${cartList.get(index).price}');
	            var cartCount = parseInt('${cartList.get(index).cartCount}');
	            totalPrice += price * cartCount;
	        }
	    });
	    
	    document.getElementById('totalPrice').textContent = formatCurrency(totalPrice);
	}
	
</script>

<%@include file="./include/footer.jsp" %>

