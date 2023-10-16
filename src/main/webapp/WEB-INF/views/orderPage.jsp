<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="./include/header.jsp" %>

<!-- 심세연 - 주문페이지 -->

<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<link rel="stylesheet" href="${contextPath}/resources/css/orderPage.css">
	
	 
	
	
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
				  	            				<td>${totalAmount}</td>
				  	            				<td>행사/할인</td>
				  	            				<td>총 가격 : ${totalPrice}</td> <!--마일리지 차감금액 나중에  -->
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
							<p>보유한 총 마일리지 (<c:out value="${user.mileage}"/>)</p>
							<p></p>
							<input type="text" id="inputMileage" placeholder="0"><button type="button" id="btnMileage" class="services-icon-wap paymentBtn" onclick="fnMileage()">사용</button>
							<input type="hidden" value="0" id="usedMileageHidden">
							<br><span id="restMileage" style="display: none"><small id="restMileage2"></small></span>
							<button type="button" id="btnMileageReset" style="display: none">초기화</button>
						</div>
					</div>
					
					<div class="row">
		                <div class="col-lg-5 mt-5">
								<h4>결제</h4>
								<button type="button" class="services-icon-wap shadow paymentBtn" id="paymentButton1">카드/일반 결제</button>
								<button type="button" class="services-icon-wap shadow paymentBtn" id="paymentButton2">카카오 페이</button>
						</div>
					</div>
				</div> <!-- end leftContainer -->	
					
					  
				<div class="rightContainer"> <!-- 오른쪽 section -->
					<div class="col-lg-6 mt-6">
						<br><br>
						<h4>결제 상세</h4>
							<br>상품금액: <c:out value="${totalPrice}"/>원 <br>
							차감금액: <span id="minusPrice">0</span>원<br>
							배송비: /택배는아직x/  <br>
							총금액: <span id="total_Price"><c:out value="${totalPrice}"/></span>원
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

                var roadAddr = data.roadAddress;  
                var extraRoadAddr = '';  

                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
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
 	
 	var usedMileage = 0 ;
 	
 	//결제 
 	var IMP = window.IMP;
    IMP.init("imp04866888");
    var pg = "";
    var merchant_uid = "";   
    var name = "" ;
    var amount = "" ;
    var buyer_email = "${user.userEmail}";
    var buyer_name = "${user.userName}";
    var buyer_tel = "${user.userPhoneNo}";
    var buyer_addr = "${user.userAddress2} ${user.userAddress3}";
    var buyer_postcode = "${user.userAddress}";
    
    
    	/* pg: pg ,
        pay_method: "card",
        merchant_uid: "5702565-33004",
        name: "당근 10kg",
        amount: 100,
        buyer_email: "Iamport@chai.finance",
        buyer_name: "포트원 기술지원팀",
        buyer_tel: "010-1234-5678",
        buyer_addr: "서울특별시 강남구 삼성동",
        buyer_postcode: "123-456" */
        
    
 
        
    
    function requestPay(pg, merchant_uid) {  
        IMP.request_pay(
          {
            pg: pg ,
            pay_method: "card",
            merchant_uid: merchant_uid,
            name: name,
            amount: amount,
            buyer_email: buyer_email,
            buyer_name: buyer_name,
            buyer_tel: buyer_tel,
            buyer_addr: buyer_addr,
            buyer_postcode: buyer_postcode
            
          },
          function (rsp) {
        	    
             if(rsp.success){alert("결제 성공");
             	//옵션 당 나눠서 하는게 좋을 듯 / sellpayment는 결제 방식인것 같음
                $.ajax({
            	url:"${contextPath}/payment",
            	type: "post",
	           	data: { usedMileage: usedMileage, mid: merchant_uid }, 
 	           	success: function(response){
            		alert("결제후 서버단에 처리완료"); 
            	},
            	error: function(xhr,status,error){
            		 console.log(xhr);
            		 console.log(status);
            	}
            	
            	 
            	 
             })  
             
             
             return;
             }
          }
        );
      } //end func requesyPay1 
 	
 	 
    //결제 버튼 눌렀을때 
 	$(".paymentBtn").on("click",function(){
 		
 		if($(this).attr("id") == "paymentButton1"){
	 		pg = "html5_inicis" ;
 		}
 		if($(this).attr("id") == "paymentButton2"){
 	 		pg = "kakaopay" ;
 	 	}
 		
 	 	usedMileage = parseInt($("#usedMileageHidden").val()) ;
 		name = "${name}";
 		amount = parseInt(${totalPrice}) - usedMileage ;
 	      $.ajax({
 			url: "${contextPath}/payment/before",
 			type: "post",
 			dataType: "json",
  			success: function(rsp){
  				if(rsp.uid == "noStock"){
  					alert(rsp.stockInfo);
  					return;
  				}
 				merchant_uid = rsp.uid ;
 				console.log(rsp.uid);
 				requestPay(pg, merchant_uid); 
 			},
 			error: function(xhr,status,error){
 				console.log(error);
 				console.log(status);
 				alert("결제 요청에 실패했습니다. 다시 시도해주세요.");
 			}
 			 
 		})  
 		
 		/* //t2
 			merchant_uid = "324___3424_342" ;
			requestPay(pg, merchant_uid); 
 		 */	

 	}) //end $("#paymentBlutton").on("click"
 	
 	/* $("#paymentButton2").on("click",function(){
 		
 		pg = "kakaopay" ;
 		requestPay1(pg, merchant_uid); 	
 	}) */ //end $("#paymentButton").on("click"
 			
 	//230923 
		//마일리지 사용 버튼 누를때 1 금액있나 확인 2확인되면 금액고정및 span창활성화 3 
	
	$("#inputMileage").on("input",function(){
		
		if($("#inputMileage").val()==""){
			return;
		}
		
		if(!$("#inputMileage").val().match(/^\d+$/)){
			
			
			alert("숫자만 입력해주세요.");
			$("#inputMileage").val("");
			return;
		}
	
	})	
		
	function fnMileage(){
		var totalMile = parseInt("${user.mileage}") ;
		var inputMile = $("#inputMileage").val();

		if(inputMile > totalMile){
			alert("보유한 마일리지를 확인해주세요.");
			return;
		}
		
		if(inputMile ==""){
			inputMile = "0";
		}
		
		$("#usedMileageHidden").val(inputMile);
		$("#restMileage").attr("style","display: block");
		$("#restMileage2").html("잔여금액: " + ( totalMile - inputMile));
		$("#btnMileageReset").attr("style","display: block");
		$("#inputMileage").attr("placeholder",inputMile);
		//231003 우측여백에 표시
		$("#minusPrice").html(inputMile);
		$("#total_Price").html(parseInt(${totalPrice}) - parseInt($("#usedMileageHidden").val()));
			
	
	}
 	
 	$("#btnMileageReset").on("click",function(){
 		$("#usedMileageHidden").val("0");
 		$("#inputMileage").val(""); 		
 		$("#restMileage").attr("style","display: none");
 		$("#restMileage2").html("");
		$("#btnMileageReset").attr("style","display: none");
		$("#inputMileage").attr("placeholder","0");
		//231003 우측여백에 표시
		$("#minusPrice").html("0");	
		$("#total_Price").html(${totalPrice});
 	})
</script>
  
  

</body>

</html>