<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/><%-- 
<sec:authentication property="principal" var="principal"/> --%>
 


<%@include file="./include/header.jsp" %>

	<section class="container py-5">
		<div class="bd-example">
			<nav>
				<div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
					<button class="nav-link active" id="nav-payment-tab" data-bs-toggle="tab" data-bs-target="#nav-payment" type="button" role="tab" aria-controls="nav-payment" aria-selected="true">결제내역</button>
					<button class="nav-link" id="nav-mileage-tab" data-bs-toggle="tab" data-bs-target="#nav-mileage" type="button" role="tab" aria-controls="nav-mileage" aria-selected="false">마일리지</button>
					<button class="nav-link" id="nav-QNA-tab" data-bs-toggle="tab" data-bs-target="#nav-QNA" type="button" role="tab" aria-controls="nav-QNA" aria-selected="false">문의내역</button>
					<button class="nav-link" id="nav-review-tab" data-bs-toggle="tab" data-bs-target="#nav-review" type="button" role="tab" aria-controls="nav-review" aria-selected="false">리뷰 작성내역</button>
					<button class="nav-link" id="nav-modify-tab" data-bs-toggle="tab" data-bs-target="#nav-modify" type="button" role="tab" aria-controls="nav-modify" aria-selected="false">회원정보 수정</button>
					<button class="nav-link" id="nav-withdraw-tab" data-bs-toggle="tab" data-bs-target="#nav-withdraw" type="button" role="tab" aria-controls="nav-withdraw" aria-selected="false">회원 탙퇴</button>
				</div>
		 	</nav>
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade active show" id="nav-payment" role="tabpanel" aria-labelledby="nav-payment-tab">
					<p><strong>payment</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
				</div>
				<div class="tab-pane fade" id="nav-mileage" role="tabpanel" aria-labelledby="nav-mileage-tab">
					<p><strong>mileage</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
				</div>
				<div class="tab-pane fade" id="nav-QNA" role="tabpanel" aria-labelledby="nav-QNA-tab">
					<p><strong>QNA</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
				</div>
				<div class="tab-pane fade" id="nav-review" role="tabpanel" aria-labelledby="nav-review-tab">
					<p><strong>review</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
				</div>
				<div class="tab-pane fade" id="nav-modify" role="tabpanel" aria-labelledby="nav-modify-tab">
					<p><strong>modify</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
				</div>
				<div class="tab-pane fade" id="nav-withdraw" role="tabpanel" aria-labelledby="nav-withdraw-tab">
					<p><strong>withdraw</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
				</div>
			</div>
		</div>
	</section>


<%@include file="./include/footer.jsp" %>

