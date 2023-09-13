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
	
	  	#userInfo input{
		background-color: #dcdcdc;
		} 
	
		.receiverAddr{ /*input의 width 넘어가도 배송정보 띄어쓰기 안되게 하기  */
		width:78%; 
		
		}
		#container {
		  display: grid;
		  grid-template-columns: 2fr 1fr; /* 두 개의 열을 생성, 각각 1fr만큼의 너비를 가짐 */
		}
		
		.leftContainer {
		  grid-column: 1; /* 왼쪽 열에 배치 */
		}
		
		.rightContainer {
		  grid-column: 2; /* 오른쪽 열에 배치 */
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
		  	            			
			  	            			<div class=oderOneModal>
				  	            			<tr>
				  	            				<!-- <td>상품정보</td>
				  	            				<td>브랜드</td>
				  	            				<td>수량</td>
				  	            				<td>차감금액</td>
				  	            				<td>상품금액</td> -->
				  	            				
				  	            				<td>
					  	            				<c:forEach var="orderOne" items="${orderList}"> 
					  	            					상품코드 ${orderOne.prodCode}/ <input type="hidden" id="rowPrice" value="${orderOne.rowPrice}" >
					  	            					옵션숫자 ${orderOne.prodOptionNo}/ 
					  	            					수량 	  ${orderOne.rowCount}/
					  	            					항목가격 ${orderOne.rowPrice} <br>
				  	            					</c:forEach>			 
				  	            				
				  	            				</td>
				  	            				<td>${orderBrand.brandName}</td>
				  	            				<td>.</td>
				  	            				<td>차감금액</td>
				  	            				<td>rowPrice를 합한 총 가격 : ${totalPrice}</td> <!--마일리지 차감금액 나중에  -->
				  	            				<td>x</td>
				  	            			</tr>
			  	            			</div>
			  	            			  	
	                			</tbody>	
	                		
	                		</table>
                	
                </div>
            </div>
		</div>
		
		</section>	<!--end start section-->	
		
		<section class="bg-white">
	        <div class="container pb-5" id="container">
	            <div class="leftContainer"> 
		            <div class="row">
		                <div class="col-lg-5 mt-5">
							<h4>배송 정보</h4> 
								<input type="radio" value="userInfo" class="deliveryArrType" name="deliveryArrType"  checked>기본정보&nbsp; 
								<input type="radio" value="otherInfo" class="deliveryArrType" name="deliveryArrType">새로입력
							
							 	<!-- <p><small>기본정보</small></p> -->
								<div id="userInfo">	
									<p><small>기본정보</small></p>
									수령인 :
									<input type="text" readonly="readonly" class="receiver" value="${user.userName}"><br>
									전화번호 : 
									<input type="text" readonly="readonly" class="receiverPhone" value="${user.userPhoneNo}"><br>
									배송주소: <input type="text" readonly="readonly" class="receiverAddr" value="${user.userAddress} ${user.userAddress2} ${user.userAddress3}"><br>   
									배송메모 :
									<select class="deliverMemo">
										<option value="0">배송메모를 선택해주세요.</option>
										<option class="optMy" value="1">요청사랑을 직접입력합니다.</option>
										<option>배송 전에 미리 연락해주세요.</option>
										<option>부재시 경비실에 맡겨주세요.</option>
									</select>
									<textarea rows="3" cols="80" style="display: none;" class="deliverTxt"></textarea>								
									<input type="hidden" readonly="readonly" class="receiverNotify">
								
								</div>
								
								<div id="otherInfo" style="display: none;">	
									<p><small>새로입력</small></p>
									수령인 :
									<input type="text" class="receiver"> <br>
									전화번호 : 
									<input type="text" class="receiverPhone"> <br>
									배송주소: <input type="text" id="sample4_postcode" placeholder="우편번호">
											<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
											<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
											<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
											<span id="guide" style="color:#999;display:none"></span>
											<input type="text" id="sample4_detailAddress" placeholder="상세주소">
											<input type="text" id="sample4_extraAddress" placeholder="참고항목">
									 
									 
									<br>
									배송메모 :
									<select class="deliverMemo">
										<option>배송메모를 선택해주세요.</option>
										<option class="optMy" value="1">요청사랑을 직접입력합니다.</option>
										<option>배송 전에 미리 연락해주세요.</option>
										<option>부재시 경비실에 맡겨주세요.</option>
									</select>
										<textarea rows="3" cols="80" style="display: none;" class="deliverTxt"></textarea>								
								</div>
						</div>
					</div>
					<div class="row">
		                <div class="col-lg-5 mt-5">
							<h4>마일리지 사용</h4>
						</div>
					</div>
					
					<div class="row">
		                <div class="col-lg-5 mt-5">
								<h4>결제</h4><br>
							<button type="button" id="paymentButton">결제하기</button>
						</div>
					</div>
				</div> <!-- end leftContainer -->	
					
					
					
					
					
					
				<div class="rightContainer"> <!-- 오른쪽 section -->
					<div>
						<h4>결제 상세</h4>
					
					
					
					</div>
				</div> <!-- end rightContainer -->
				
				
					
				
				
			</div> <!--end  <div class="container pb-5">  -->
			
		
		</section>
		
	
	</div><!-- END 전체 담는 div  -->  
	
	
 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 <script type="text/javascript"	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
 <script>
 	
 	//배송 메모적는칸 활성화
 	$(".deliverMemo").on("change",function(){
 		
 		if($(this).val() == "1" ){
 			$(this).siblings(".deliverTxt").attr("style","display: block") ;

 		}else{
 			$(this).siblings(".deliverTxt").val("");
 			$(this).siblings(".deliverTxt").attr("style","display: none");
 		}
 		
 	})
 	
 	
 	//배송지 기본/새입력 선택
 	$(".deliveryArrType").on("change",function(){
 		if($(this).val() == "userInfo"){
            $("#otherInfo").attr("style","display: none");
            $("#userInfo").attr("style","display: block");
            return;
 		}
 		
 		if($(this).val() == "otherInfo"){
            $("#userInfo").attr("style","display: none");
            $("#otherInfo").attr("style","display: block");
				return;
		}
 	})
 	
 	
 	//주소	
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
 	
 	
 	var IMP = window.IMP;
    IMP.init("imp04866888");
    function requestPay() {
        IMP.request_pay(
          {
            pg: "html5_inicis",
            pay_method: "card",
            merchant_uid: "5705522-33004",
            name: "당근 10kg",
            amount: 100,
            buyer_email: "Iamport@chai.finance",
            buyer_name: "포트원 기술지원팀",
            buyer_tel: "010-1234-5678",
            buyer_addr: "서울특별시 강남구 삼성동",
            buyer_postcode: "123-456",
            display: {
                card_quota: [6]   
            }
          },
          function (rsp) {
             if(rsp.success){alert("결제 성공");
             }
          }
        );
      }
 	
 	//결제 버튼 눌렀을때 
 	$("#paymentButton").on("click",function(){
 		requestPay(); 	
 	}) //end $("#paymentButton").on("click"
 	
 	
</script>
  
  

</body>

</html>