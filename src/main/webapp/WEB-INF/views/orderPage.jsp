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
	  	            				<td style="width: 45%">상품정보</td>
	  	            				<td style="width: 10%">브랜드</td>
	  	            				<td style="width: 10%">수량</td>
	  	            				<td style="width: 15%">차감금액</td>
	  	            				<td style="width: 20%">상품금액</td>
	  	            			</thead>
	  	            			
	  	            			<tbody class="orderListBody">
		  	            			<c:forEach var="orderOne" items="${orderList}"> 
			  	            			<tr>
			  	            				<!-- <td>상품정보</td>
			  	            				<td>브랜드</td>
			  	            				<td>수량</td>
			  	            				<td>차감금액</td>
			  	            				<td>상품금액</td> -->
			  	            				
			  	            				<td>${orderOne.prodCode}</td>
			  	            				<td>${orderOne.prodOptionNo}</td>
			  	            				<td>${orderOne.rowCount}</td>
			  	            				<td>${orderOne.rowPrice}</td>
			  	            				<td>상품금액</td>
			  	            			</tr>
			  	            		</c:forEach>	  	
	                			</tbody>	
	                		
	                		</table>
                	
                </div>
            </div>
		</div>
		
		</section>	<!--end start section-->	
	
	
	
	</div><!-- END 전체 담는 div  -->  
	
	
 
 
  

</body>

</html>