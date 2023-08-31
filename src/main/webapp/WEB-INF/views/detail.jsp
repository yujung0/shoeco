<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 230827 499부터 해야함 / 옵션 x 일때 div 자체를 없애는것  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%@include file="./include/header.jsp" %>
 
<!-- 상품 추가 관련 모달  -->
 <style> 
	.modalContain  {
	   position : relative ;
	}

	.closeModal  {
	   position : absolute ;
	   top: 0px;
	   right: 30px;
	
	}
	
	.prodCount{
	  top: 5px;
	}
 
 	.perPrice{
 	position : absolute ;
 	right: 28px;
 	}
 
 	#totalPrice{
 	position : absolute ;
 	right: 28px;
 	}
 
  	 
 </style>
 
 
 
 <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



    <!-- Open Content -->
    <section class="bg-light">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                    <div class="card mb-3">
                        <img class="card-img img-fluid" src="assets/img/product_single_10.jpg" alt="Card image cap" id="product-detail">
                    </div>
                    <div class="row">
                        <!--Start Controls-->
                        <div class="col-1 align-self-center">
                            <a href="#multi-item-example" role="button" data-bs-slide="prev">
                                <i class="text-dark fas fa-chevron-left"></i>
                                <span class="sr-only">Previous</span>
                            </a>
                        </div>
                        <!--End Controls-->
                        <!--Start Carousel Wrapper-->
                        <div id="multi-item-example" class="col-10 carousel slide carousel-multi-item" data-bs-ride="carousel">
                            <!--Start Slides-->
                            <div class="carousel-inner product-links-wap" role="listbox">

                                <!--First slide-->
                                <div class="carousel-item active">
                                    <div class="row">
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="assets/img/product_single_01.jpg" alt="Product Image 1">
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="assets/img/product_single_02.jpg" alt="Product Image 2">
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="assets/img/product_single_03.jpg" alt="Product Image 3">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!--/.First slide-->

                                <!--Second slide-->
                                <div class="carousel-item">
                                    <div class="row">
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="assets/img/product_single_04.jpg" alt="Product Image 4">
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="assets/img/product_single_05.jpg" alt="Product Image 5">
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="assets/img/product_single_06.jpg" alt="Product Image 6">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!--/.Second slide-->

                                <!--Third slide-->
                                <div class="carousel-item">
                                    <div class="row">
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="assets/img/product_single_07.jpg" alt="Product Image 7">
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="assets/img/product_single_08.jpg" alt="Product Image 8">
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="assets/img/product_single_09.jpg" alt="Product Image 9">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!--/.Third slide-->
                            </div>
                            <!--End Slides-->
                        </div>
                        <!--End Carousel Wrapper-->
                        <!--Start Controls-->
                        <div class="col-1 align-self-center">
                            <a href="#multi-item-example" role="button" data-bs-slide="next">
                                <i class="text-dark fas fa-chevron-right"></i>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <!--End Controls-->
                    </div>
                </div>
                <!-- col end -->
                <div class="col-lg-7 mt-5">
                    <div class="card">
                        <div class="card-body"> <!-- div class="card-body"  -->
                        	<%-- <c:forEach var="prodOption" items="${prodOption}"> --%>
                            <h1 class="h2">${product.get(0).prodName} </h1>
                            <p class="h3 py-2">₩ <fmt:formatNumber value="${product.get(0).sellPrice}" pattern="#,###"/></p>   
                            <p class="py-2">
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-secondary"></i>
                                <span class="list-inline-item text-dark"><small>리뷰평점</small> 4.8 | 36 Comments</span> <!-- 아직 리뷰정보에 관해서는 x -->
                            </p>
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h6>Brand:</h6>
                                </li>
                                <li class="list-inline-item">
                                    <p class="text-muted"><strong>${product.get(0).brandName}</strong></p>
                                </li>
                            </ul>

                            <h6>Description:</h6>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temp incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse. Donec condimentum elementum convallis. Nunc sed orci a diam ultrices aliquet interdum quis nulla.</p>
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h6><Strong>색상 : </Strong></h6>
                                </li>
                                
                                    <p class="text-muted"><strong>
                                    <c:forEach var="color" items="${prodColor}" > 
                                    	  ${color.color}
                                    </c:forEach>
                                     </strong></p>	  
                                     
                                
                            </ul>

                            <h6><strong>배송 관련 정보: <br></strong></h6>
                            <p>-추 후 업뎃</p>
                            <hr>
                       <!-- <ul class="list-unstyled pb-3">
                                <li>Lorem ipsum dolor sit</li>
                                <li>Amet, consectetur</li>
                                <li>Adipiscing elit,set</li>
                                <li>Duis aute irure</li>
                                <li>Ut enim ad minim</li>
                                <li>Dolore magna aliqua</li>
                                <li>Excepteur sint</li>
                            </ul>   -->

                           <%--  <form action="" method="GET">
                                <input type="hidden" name="product-title" value="Activewear">
                                <div class="row">
                                    <div class="col-auto">
                                        <ul class="list-inline pb-3">
                                            <li class="list-inline-item">Size :
                                                <input type="hidden" name="product-size" id="product-size" value="S">
                                            </li>
                                            
      										<c:forEach var="size" items="${prodSize}">						                                     
	                                            <li class="list-inline-item"><span class="btn btn-success btn-size">${size.prodSize }</span></li>
	                       <!--                      <li class="list-inline-item"><span class="btn btn-success btn-size">M</span></li>
	                                            <li class="list-inline-item"><span class="btn btn-success btn-size">L</span></li>
	                                            <li class="list-inline-item"><span class="btn btn-success btn-size">XL</span></li> -->
                                        	</c:forEach>
                                        </ul>
                                    </div>
                                    <div class="col-auto">
                                        <ul class="list-inline pb-3">
                                            <li class="list-inline-item text-right">
                                                Quantity
                                                <input type="hidden" name="product-quanity" id="product-quanity" value="1">
                                            </li>
                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li>
                                            <li class="list-inline-item"><span class="badge bg-secondary" id="var-value">1</span></li>
                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li>
                                        </ul>
                                    </div>
                                </div>
                               
                            </form> 색상/ 종류 담는 option 항목으로 변경 --%>
							 
								<div id="ProdColor">
									<select id="selectClass">
										<!--<option></option> -->
											<option>색상</option>
                                           <c:forEach var="optionColor" items="${prodColor}">
											<option><c:out value="${optionColor.color}"/></option>

                                           
                                           </c:forEach>
									</select>
								</div>
								<div id="ProdSize"> 
									<select id="selectClass2">
										<option>사이즈</option>
									</select>
								</div>
								
						   <!--selectClass2 까지 골랐을 때 나온는 div -->
						   	   <div id="optionEvent" style="display: none;" >
									 
								
								
							 		 
									<!-- <div  class="col-auto" id="ProdCount">
									 	  <ul class="list-inline pb-3">
	                                            <li class="list-inline-item text-right">
	                                                Quantity
	                                                <input type="hidden" name="product-quanity" id="product-quanity" value="1">
	                                            </li>
	                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li>
	                                            <li class="list-inline-item"><span class="badge bg-secondary" id="var-value">1</span></li>
	                                            <li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li>
	                                        </ul>
	                                </div> -->
									
								</div>
								  
								
							 
							 
							
							
							
							<!-- end/ 총 금액 표시  -->
							<hr>
							 <!-- 구매버튼 / add 장바구니 -->
							 	<span>총 상품 금액: </span><span id="totalPrice">0 원</span><br><br>
								 <div class="row pb-3">
                                    <div class="col d-grid">
                                        <button type="button" class="btn btn-success btn-lg" name="submit" value="buy" id="buyBtn">Buy</button>
                                    </div>
                                    <div class="col d-grid">
                                        <button type="submit" class="btn btn-success btn-lg" name="submit" value="addtocard">Add To Cart</button>
                                    </div>
                                </div>
							 

                        </div>  <!--end div class="card-body"  -->
                    
                    
                    
                    </div>
                </div>
            </div>
        </div>
        
        <form id="goOrderPage" action="${contextPath}/orderPage" method="get">
        	<input type="hidden" name="prodCode" id="prodCode">
        	<!-- <input type="hidden" name="colorStr" id="colorStr">
        	<input type="hidden" name="sizeStr" id="sizeStr"> -->
        	
        	<!-- 위에 두줄 없어도 될듯  optionV 때문에 -->
        	<input type="hidden" name="optionNoStr" id="optionNoStr">
        	
        	<input type="hidden" name="countStr" id="countStr">	  <!-- 개당 가격 -->
        	<input type="hidden" name="countStr2" id="countStr2"> <!-- 수량  -->
        </form>
    	
    </section> <!-- Close Content -->
    
	<script> //detail 내용에 대한 script 시작
	
	//232:  결제 버튼 눌렀을때 관련 script----------------------
	
	$("#buyBtn").on("click",function(){
		
		//로그인이 안되었을때
		/* if(){
			return;
		} 
		 */
		
		/* href="${contextPath}/orderPage"; */
		
		var selectedColor2 = "";
		var optionSizeV2 = "";
		var perPrice2 = "" ;
		var perCount2 = "";
		
/* 		var prodColorArray = "";
		var prodSizeArray = "";
 */		var optionNoVArray = "";
		var countArray = "";
		var perCountArray =""
		
		$(".modalContain").each(function(index,modal){
					
			var modal = $(modal);
			/* selectedColor2 = modal.find(".selectedColor").val() ;
			optionSizeV2 = modal.find(".optionSizeV").val(); */
			optionNoV2 = modal.find(".optionNoV").val();
			perPrice2 = modal.find(".rowPrice").text() ;
			perCount2 = modal.find(".prodQuantity").val();
			
/* 			console.log(selectedColor2 + " / " + optionSizeV2 + " / " + perPrice2); 
			prodColorArray+=selectedColor2 +"," ;
			prodSizeArray+=optionSizeV2 + ","  ;
 */			
 			optionNoVArray += optionNoV2 + ",";
 			countArray+=perPrice2 + ",";
			perCountArray+=perCount2 + ",";
			
			
			
		})//end $(".modalContain").each(function(){  
		 
			/* $("#colorStr").val(prodColorArray.slice(0,-1));
			$("#sizeStr").val(prodSizeArray.slice(0,-1)); */
			$("#optionNoStr").val(optionNoVArray.slice(0,-1));
			$("#countStr").val(countArray.slice(0,-1));
			$("#countStr2").val(perCountArray.slice(0,-1));
			console.log(optionNoVArray.slice(0,-1));
			
			$("#goOrderPage").submit();
			
	}); //end $("#buyBtn")on.("click",function(){
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//end  232-----------------------------------------
	
	
	var prodCode = ${prodCode} ;
	$("#prodCode").val(prodCode);
	var selectedColor = "";
	var sellPrice = ${product.get(0).sellPrice};
	var oneRowPrice = "";
	//*첫번째 옵션 선택시
	$("#selectClass").on("change",function(){
		
		
		
		selectedColor = $("#selectClass").attr("option","selected").val();
		
		console.log(prodCode);
		console.log(selectedColor);
		// 변수 담긴것 확인 alert(selectedColor);
		
		
		$.ajax({
			type: "get",
			url: "${contextPath}/detail/sizePerColorAjax",
			data: { prodCode: prodCode, color: selectedColor},
			dataType: "json",
			contentType: "application/json",
			success: function(response){
				 
				var selectClass2 = $("#selectClass2") ;
				selectClass2.empty() ;
				
				var optionName = $("<option>").text("사이즈");
				selectClass2.append(optionName);
				
			/* 	response.sort(function(a, b) {
					  return b. - a; // 내림차순 정렬
					}); */
 
					$.each(response,function(index,sizePerColor){
					
						if(sizePerColor.prodCount <=  0 ){
		//optionNo 넣어서 수정중 
							//var optionContent = $("<option>").text(sizePerColor.prodSize + " / 잔여수량: " + sizePerColor.prodCount + "/ 옵션번호: " + sizePerColor.prodOptionNo).attr("disabled","true") ;
							var optionContent = $("<option>").text(sizePerColor.prodSize + " / 잔여수량: " + sizePerColor.prodCount).attr("disabled","true") ;
							optionContent.val(sizePerColor.prodSize+"/"+sizePerColor.prodOptionNo);
							selectClass2.append(optionContent);
						}else{
							//var optionContent = $("<option>").text(sizePerColor.prodSize + " / 잔여수량: " + sizePerColor.prodCount + "/ 옵션번호: " + sizePerColor.prodOptionNo) ;
							var optionContent = $("<option>").text(sizePerColor.prodSize + " / 잔여수량: " + sizePerColor.prodCount) ;
							optionContent.val(sizePerColor.prodSize+"/"+sizePerColor.prodOptionNo);
							selectClass2.append(optionContent);
							 
						}
					
					 
					
					}) //each end
				 
					
			},
			error: function(xhr,status,error){
				console.log("sizePerColor/ajax의 에러");
				
			}
				 
			
		});//end ajax
		
		
		
		
	}) //end $("#selectClass").on("change" -
			
			
	//*두번째 옵션 선택시		
	$("#selectClass2").on("change",function(){
		/* var optionSizeV = $("#selectClass2").attr("option","selected").val(); * optionSizeV를 optionNo로 변경 */
//		var optionSizeV = $("#selectClass2").attr("option","selected").val();
		var optionDetail = $("#selectClass2").attr("option","selected").val();
		var index = optionDetail.indexOf("/") ;
		console.log(index);
		var optionSizeV = optionDetail.substring(0,index);
		var optionNoV = optionDetail.substring(index + 1);
		console.log(optionSizeV);
		console.log(optionNoV);
		//prodCode, selectedColor 변수명 
		
			
		var str = selectedColor+ "-" +optionSizeV ;
		console.log(str);
		
			if( $("#" + selectedColor+ "-" +optionSizeV ).val() == selectedColor+ "-" +optionSizeV){
				
				
				
				
			
		//	if($(".selectedColor").val() == selectedColor && $(".optionSizeV").val() == optionSizeV ){
				alert("이미 추가된 옵션 입니다.");
				   $("#selectClass").prop("selectedIndex",0);
                   $("#selectClass2").prop("selectedIndex",0);
                   $("#selectClass").removeAttr("option","selected");
                   $("#selectClass2").removeAttr("option","selected");  
                   $(document).ready(function() {
                 	  

                   	$("#selectClass2").html("<option>사이즈</option>");
                   	
                   	/*  $("#selectClass").html("<option>색상</option>
                                 <c:forEach var="optionColor" items="${prodColor}">
									<option><c:out value="${optionColor.color}"/></option>

                                </c:forEach>");
*/                           	});
			}else{
		
		 
					$("#optionEvent").attr("style","display: block;") ;
					 /* <div  class="col-auto" id="ProdCount">
							 	  <ul class="list-inline pb-3">
			                            <li class="list-inline-item text-right">
			                                Quantity
			                                <input type="hidden" name="product-quanity" id="product-quanity" value="1">
			                            </li>
			                            <li class="list-inline-item"><span class="btn btn-success" id="btn-minus">-</span></li>
			                            <li class="list-inline-item"><span class="badge bg-secondary" id="var-value">1</span></li>
			                            <li class="list-inline-item"><span class="btn btn-success" id="btn-plus">+</span></li>
			                        </ul>
			                </div> */
			                
			                //********************************************* 대표 모달안의 id값을 '색상-사이즈' 이형태로 함 , '색상-사이즈'
					var modalContain = "" ;
			        modalContain =   '<div class="modalContain"><hr><span type="button" class="closeModal">x</span>'
			        				+"<h6>"+ prodCode + " / " +  selectedColor + " / "   + optionSizeV +"</6h>" 
			        				+'<input type="hidden" id="'+selectedColor+'-'+optionSizeV+'" value="'+selectedColor+'-'+optionSizeV + '">'
			        				
									+ '<div  class="col-auto" class="prodCount">'
						 	  		+ '<ul class="list-inline pb-3">'
			                        + '<li class="list-inline-item text-right">'
			                        
			                    /*     + '<input type="hidden" name="product-quanity" id="product-quanity" value="1">' */
			                    	+ '<input type="hidden" class="selectedColor" value="'+selectedColor+'">'
			         				+ '<input type="hidden" class="optionSizeV" value="'+optionSizeV+'"></li>'
			         				+ '<input type="hidden" class="optionNoV" value="'+optionNoV+'"></li>'
			                        +'<li class="list-inline-item"><span class="btn btn-success btn-minus" >-</span></li>'
			                       /*  + '수량: '  */
			                        +'<span><input type="text" class="prodQuantity" value="1"> &nbsp;</span>'
			                        /* +'<li class="list-inline-item"><span class="badge bg-secondary" id="var-value">1</span></li>' */
			                        +'<li class="list-inline-item"><span class="btn btn-success btn-plus" >+</span></li><br>'
			                        +'<div class="perPrice"><span class="rowPrice">'+sellPrice+'</span>'
			                        +'<small>원</small></div></ul></div></div>';
					
										$("#optionEvent").append(modalContain);
						
					
					
			                       /*      $("#selectClass").attr("option","selected").val("색상");
			                            $("#selectClass2").attr("option","selected").val("사이즈"); */
			                            $("#selectClass").prop("selectedIndex",0);
			                            $("#selectClass2").prop("selectedIndex",0);
			                            $("#selectClass").removeAttr("option","selected");
			                            $("#selectClass2").removeAttr("option","selected");  
					
			                            
			                            $(document).ready(function() {
			                            	  
			
			                            	$("#selectClass2").html("<option>사이즈</option>");
			                            	
			                            	/*  $("#selectClass").html("<option>색상</option>
			                                          <c:forEach var="optionColor" items="${prodColor}">
														<option><c:out value="${optionColor.color}"/></option>
			 
			                                         </c:forEach>");
			  */                           	});
                            
			}//end 이미 선택된 옵션입니다의 else문  
                            
			totalPrice();
			$("#totalPrice").html(totalPrice2 +" 원");
		
			}); // change function,  end
			
			
		
		
		//수량에 관해 입력할때 유효성 체크
		//ajax로 선택된 재고별 수량 받음 
		
		
		//*input입력하여 수량 바꿀때
/*		//인풋 값이 숫자가 아니면 숫자이도록 하는 것 ->readonly써서 필요없어짐-> 대량구매시 잇어야할듯*/
 		$("#optionEvent").on("input", ".prodQuantity", function() {
//			var prodQuantityVal = $(".prodQuantity").val();
			var prodQuantityVal = $(this).val();
			console.log(prodQuantityVal);
			
		 //alert("일단 input change가 먹음");
		
		 	if(prodQuantityVal != ""){
			 	if(!prodQuantityVal.match(/^\d+$/) || parseInt(prodQuantityVal) == 0){
			 		alert("적절한 수량을 입력해주세요.")
//			 		$(".prodQuantity").val(1);
			 		$(this).val(1);
			 	}
		 	}else{
		 		$(this).val(0);
		 		 
		 	}
		 	
		 	//input 버전으로 수량 막는 거 추가 
		 	var beforeVal = parseInt($(this).val());
       		var color = $(this).closest("span").siblings("li").find(".selectedColor").val() ;
       		var prodSizeStr = $(this).closest("span").siblings("li").find(".optionSizeV").val() ;
			console.log(color + "<-컬러 " );
			console.log(prodSizeStr + "<-사이즈 ");
			console.log(beforeVal + "<-수량" );
			       		
			       	 $.ajax({
				        	url: "${contextPath}/detail/oneSizePerColorAjax",
				        	type: "get",
				        	data: {prodCode: prodCode , 
				    	       					color: color,
				    	       					prodSizeStr: prodSizeStr ,
				    	       					prodQuantityStr:  beforeVal },
				    		dataType: "json",
				    		contentType: "application/json",
				    		success: (response) => {

				    			if(!response.boolVal){
				    				
				    				//재고가 없으면 실행문
				    				alert("재고가 부족합니다. 현재 재고: " + response.prodCount + "개");
				    				$(this).val(1);
				    				$(this).closest("span").siblings(".perPrice").find(".rowPrice").html(1 * sellPrice);
				    				totalPrice();
				    				$("#totalPrice").html(totalPrice2 +" 원");
				    				
				    				
				    			}else{
				    				
				    				//재고가 있으면 실행문
				    				$(this).val(beforeVal);
				    				$(this).closest("span").siblings(".perPrice").find(".rowPrice").html(beforeVal * sellPrice);
				    				totalPrice();
				    				$("#totalPrice").html(totalPrice2 +" 원");
				    			}
				    			
				    			
				    		}
				    		
				    		
				    	       					
				        	}) //ajax end
       		 
		 	//end input 버전으로 수량 막는 거 추가 

		 	
       	}); // end $(".prodQuantity").on("change",function() 
      			 
      		 
      //*+ 버튼 눌렀을때		
       	$("#optionEvent").on("click", ".btn-plus", function() {
       		var beforeVal = parseInt($(this).closest("li").siblings("span").find(".prodQuantity").val()) ;
       		var color = $(this).closest("li").siblings("li").find(".selectedColor").val() ;
       		var prodSizeStr = $(this).closest("li").siblings("li").find(".optionSizeV").val() ;
			var prodQuantityStr =  beforeVal + 1 ;	
			console.log(color + "<-컬러 " );
			console.log(prodSizeStr + "<-사이즈 ");
			console.log(prodQuantityStr + "<-수량" );
			       		
			       	 $.ajax({
				        	url: "${contextPath}/detail/oneSizePerColorAjax",
				        	type: "get",
				        	data: {prodCode: prodCode , 
				    	       					color: color,
				    	       					prodSizeStr: prodSizeStr ,
				    	       					prodQuantityStr:  prodQuantityStr },
				    		dataType: "json",
				    		contentType: "application/json",
				    		success: (response) => {

				    			if(!response.boolVal){
				    				
				    				//재고가 없으면 실행문
				    				alert("재고가 부족합니다. 현재 재고: " + response.prodCount + "개");
				    				$(this).closest("li").siblings("span").find(".prodQuantity").val(beforeVal);
				    				$(this).closest("li").siblings(".perPrice").find(".rowPrice").html(beforeVal * sellPrice);
				    				 totalPrice();
				    				 $("#totalPrice").html(totalPrice2 +" 원");
				    				
				    			}else{
				    				
				    				//재고가 있으면 실행문
				    				$(this).closest("li").siblings("span").find(".prodQuantity").val(prodQuantityStr);
				    				$(this).closest("li").siblings(".perPrice").find(".rowPrice").html(prodQuantityStr * sellPrice);
				    				 totalPrice();
				    				 $("#totalPrice").html(totalPrice2 +" 원");
				    			}
				    			
				    			
				    		}
				    		
				    		
				    	       					
				        	}) //ajax end
       		
				        	
		 	
		 	//console.log("시블링 값: " + ( beforeVal + 1));
		 	//console.log( beforeVal);
				       
		 	
      	}); // end $("#optionEvent").on("click", ".btn-plus", function() 
      			
      	//*- 버튼 눌렀을때		
      	$("#optionEvent").on("click", ".btn-minus", function() {
			var beforeVal = parseInt($(this).closest("li").siblings("span").find(".prodQuantity").val()) ;
       		
				if(beforeVal <= 1){
					alert("수량을 확인 해 주세요.")
					$(this).closest("li").siblings("span").find(".prodQuantity").val(1);	
					$(this).closest("li").siblings(".perPrice").find(".rowPrice").html(1 * sellPrice);
	   				 totalPrice();
	   				$("#totalPrice").html(totalPrice2 +" 원");
				}else{
				
			 		$(this).closest("li").siblings("span").find(".prodQuantity").val(beforeVal - 1);
			 		$(this).closest("li").siblings(".perPrice").find(".rowPrice").html((beforeVal - 1) * sellPrice);
	   				 totalPrice();
	   				$("#totalPrice").html(totalPrice2 +" 원");
				}
				
				 
			});  // end $("#optionEvent").on("click", ".btn-minus", function() 
      			
        
			var totalPrice2 = "" ;
			
			
			//*총가격	표시하는 함수	
    		function totalPrice(){
				
    			totalPrice2 = 0;
				
				$(".rowPrice").each(function(){
					
					var rowPrice2 = parseInt($(this).text()) ;
						
					totalPrice2 += rowPrice2 ; 
					
				}) // end $(".rowPrice").each(function(){
				
				  
				
			} //totalPrice end
					
					
					
      	 //*품목 모달 삭제
      	 $("#optionEvent").on("click", ".closeModal", function() {
			 
      		 
      		/* $(this).closest(".modalContain").html("") ; */
      		$(this).closest(".modalContain").remove();
      		totalPrice();
			$("#totalPrice").html(totalPrice2 +" 원");
      		   
				 
			});  // end  $("#optionEvent").on("click", ".closeModal", function() {
      	 
      			
      			 
	
	//****************************************************** 상품 상세 sectino의 script 문은 뒤에 
	
		
		
	
	</script>
	










    <!-- 상품 관련 정보 Article -->
	 <section>
        
        <div class="container pb-5 bg-white">
	        <nav><br>
	            <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
	                <button class="nav-link active" id="nav-prodInfo-tab" data-bs-toggle="tab" data-bs-target="#nav-prodInfo" type="button" role="tab" aria-controls="nav-prodInfo" aria-selected="true">상세정보</button>
	                <button class="nav-link" id="nav-review-tab" data-bs-toggle="tab" data-bs-target="#nav-review" type="button" role="tab" aria-controls="nav-review" aria-selected="false">리뷰</button>
	                <button class="nav-link" id="nav-qna-tab" data-bs-toggle="tab" data-bs-target="#nav-qna" type="button" role="tab" aria-controls="nav-qna" aria-selected="false">QnA</button>
	                <button class="nav-link" id="nav-refund-tab" data-bs-toggle="tab" data-bs-target="#nav-refund" type="button" role="tab" aria-controls="nav-refund" aria-selected="false">반품/교환 정보</button>
	            </div>
	        </nav>
	        <div class="tab-content" id="nav-tabContent">
	            <!-- 각 탭의 내용을 동적으로 표시할 공간 -->
	            <div class="tab-pane active" id="nav-prodInfo" role="tabpanel" aria-labelledby="nav-prodInfo-tab">
	                <p><strong>상품상세</strong> 첨부파일 테이블에서 직접 가져와야 할 듯 </p>
	            </div>
	            
	              
	            
	            <div class="tab-pane" id="nav-review" role="tabpanel" aria-labelledby="nav-review-tab">
	                <p><strong>리뷰</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
	            </div>
	            <div class="tab-pane" id="nav-qna" role="tabpanel" aria-labelledby="nav-qna-tab">
	                <p><strong>QnA</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
	            </div>
		        <div class="tab-pane" id="nav-refund" role="tabpanel" aria-labelledby="nav-modify-tab">
		            <p><strong>반품/교환 정보</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
		        </div>
	        </div>
	    </div>
	 </section>
	 <!-- END 상품 관련 정보 Article -->

 





    <!-- Start Article -->
    <section class="py-5">
        <div class="container">
            <div class="row text-left p-2 pb-3">
                <h4>Related Products</h4>
            </div>

            <!--Start Carousel Wrapper-->
            <div id="carousel-related-product">

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_08.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">Red Clothing</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$20.00</p>
                        </div>
                    </div>
                </div>

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_09.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">White Shirt</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$25.00</p>
                        </div>
                    </div>
                </div>

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_10.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">Oupidatat non</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$45.00</p>
                        </div>
                    </div>
                </div>

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_11.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">Black Fashion</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$60.00</p>
                        </div>
                    </div>
                </div>

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_08.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">Oupidatat non</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li class="">M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$80.00</p>
                        </div>
                    </div>
                </div>

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_09.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">Oupidatat non</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$110.00</p>
                        </div>
                    </div>
                </div>

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_10.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">Oupidatat non</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$125.00</p>
                        </div>
                    </div>
                </div>

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_11.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">Oupidatat non</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$160.00</p>
                        </div>
                    </div>
                </div>

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_08.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">Oupidatat non</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$180.00</p>
                        </div>
                    </div>
                </div>

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_09.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">Oupidatat non</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$220.00</p>
                        </div>
                    </div>
                </div>

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_10.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">Oupidatat non</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$250.00</p>
                        </div>
                    </div>
                </div>

                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="assets/img/shop_11.jpg">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="shop-single.html" class="h3 text-decoration-none">Oupidatat non</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
                            <ul class="list-unstyled d-flex justify-content-center mb-1">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                            </ul>
                            <p class="text-center mb-0">$300.00</p>
                        </div>
                    </div>
                </div>

            </div>


        </div>
        
   	 </section>
    <!-- End Article -->
 
 
 
  
 
 
 
  <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">Zay Shop</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            123 Consectetur at ligula 10660
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Luxury</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Wear</a></li>
                        <li><a class="text-decoration-none" href="#">Men's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Women's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Popular Dress</a></li>
                        <li><a class="text-decoration-none" href="#">Gym Accessories</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Shoes</a></li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Further Info</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Home</a></li>
                        <li><a class="text-decoration-none" href="#">About Us</a></li>
                        <li><a class="text-decoration-none" href="#">Shop Locations</a></li>
                        <li><a class="text-decoration-none" href="#">FAQs</a></li>
                        <li><a class="text-decoration-none" href="#">Contact</a></li>
                    </ul>
                </div>

            </div>

            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="subscribeEmail">Email address</label>
                    <div class="input-group mb-2">
                        <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
                        <div class="input-group-text btn-success text-light">Subscribe</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Copyright &copy; 2021 Company Name 
                            | Designed by <a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- End Script -->

    <!-- Start Slider Script -->
    <script src="assets/js/slick.min.js"></script>
    <!-- <script src="resources/js/slick.min.js"></script> -->
    <script>
        $('#carousel-related-product').slick({
            infinite: true,
            arrows: false,
            slidesToShow: 4,
            slidesToScroll: 3,
            dots: true,
            responsive: [{
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                }
            ]
        });
    </script>
    <!-- End Slider Script -->

</body>

</html>