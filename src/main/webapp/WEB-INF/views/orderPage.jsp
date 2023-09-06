<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 230827 499부터 해야함 / 옵션 x 일때 div 자체를 없애는것  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%@include file="./include/header.jsp" %>
 
	
	
	<style>
		#orederListTable{
		}
		
		.orderListBody{
		background-color: white;
		border-color: black; /* 추후 선 보이게 보완 */
		}
	
	
	</style>
	
	
	<div><!-- 전체 담는 div  --> 
		
		
		 <!-- start section-->
		<section class="bg-light">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                	<h4>주문 목록</h4><br>
							
	                		<table id="orderListTable" style="width: 1200px">
	  	            			
	  	            		
	  	            		
	  	            			<thead>
	  	            				<td style="width: 45%">주문정보</td>
	  	            				<td style="width: 10%">브랜드</td>
	  	            				<td style="width: 10%">수량</td>
	  	            				<td style="width: 15%">차감금액</td>
	  	            				<td style="width: 20%">상품금액</td>
	  	            				<td style="width: 10%">x칸</td>
	  	            			</thead>
	  	            			
	  	            			<tbody class="orderListBody">
		  	            			<c:forEach var="orderOne" items="${orderList}"> 
			  	            			<div class=oderOneModal>
				  	            			<tr>
				  	            				<!-- <td>상품정보</td>
				  	            				<td>브랜드</td>
				  	            				<td>수량</td>
				  	            				<td>차감금액</td>
				  	            				<td>상품금액</td> -->
				  	            				
				  	            				<td>
				  	            				상품코드 ${orderOne.prodCode}
				  	            				옵션숫자 ${orderOne.prodOptionNo}
				  	            				 
				  	            				
				  	            				</td>
				  	            				<td>${orderBrand.brandName}</td>
				  	            				<td>${orderOne.rowCount}</td>
				  	            				<td>차감금액</td>
				  	            				<td>${orderOne.rowPrice}</td>
				  	            				<td>x</td>
				  	            			</tr>
			  	            			</div>
			  	            		</c:forEach>	  	
	                			</tbody>	
	                		
	                		</table>
                	
                </div>
            </div>
		</div>
		
		</section>	<!--end start section-->	
		
		<section class="bg-white">
	        <div class="container pb-5">
	            <div class="row">
	                <div class="col-lg-5 mt-5">
						<p>배송 정보</p><br>
						
						<p><small>기본정보</small></p>
						수령인 :
						${user.userName} <br>
						전화번호 : 
						${user.userPhoneNo} <br>
						배송주소: ${user.userAddress}
						${user.userAddress2}
						${user.userAddress3}
						<br>
						배송메모 :
						<select id="deliverMemo">
							<option>배송메모를 선택해주세요.</option>
							<option id="optMy" value="1">요청사랑을 직접입력합니다.</option>
							<option>배송 전에 미리 연락해주세요.</option>
							<option>부재시 경비실에 맡겨주세요.</option>
						</select>
						
						
					
					</div>
					
					
				
				</div>
				<div class="row">
	                <div class="col-lg-5 mt-5">
						마일리지 사용
					
					</div>
					
					
				
				</div>
				<div class="row">
	                <div class="col-lg-5 mt-5">
						결제
					
					</div>
					
					
				
				</div>
					
				
				
			</div>
		</section>
		
	
	</div><!-- END 전체 담는 div  -->  
	
	
 
 <script>
 	$("#deliverMemo").on("change",function(){
 		
 		if($(this).val() == "1" ){
 		alert("두번재");
 		}
 		
 	})
 	
 	
 
 </script>
  

</body>

</html>