<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%@include file="./include/header.jsp" %>
 
<!-- 심세연 - list페이지 -->
 

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



    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">

            <div class="col-lg-3">
                <h1 class="h2 pb-4">Categories</h1> <!--  -->
                <ul class="list-unstyled templatemo-accordion">
                 
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            Size
                        </a>
                   
                    	<c:forEach var="sizeOne" begin="220" step="5" end="300" >
                    		<c:out value="${sizeOne}"/> 
                    		<input type="checkbox" class="sizeArray" value="${sizeOne}" ${pagingCre.paging.sizeArray.contains(String.valueOf(sizeOne)) ? 'checked' : ''}>	
                    	</c:forEach>
                     
                    </li>
                     <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            Color
                        </a>
                        	red<input type="checkbox" class="colorArray" value="빨강" ${pagingCre.paging.colorArray.contains("빨강") ? 'checked' : ''}>
                        	blue<input type="checkbox" class="colorArray" value="파랑" ${pagingCre.paging.colorArray.contains("파랑") ? 'checked' : ''}>
                        	yellow<input type="checkbox" class="colorArray" value="노랑" ${pagingCre.paging.colorArray.contains("노랑") ? 'checked' : ''}>
                        	white<input type="checkbox" class="colorArray" value="흰색" ${pagingCre.paging.colorArray.contains("흰색") ? 'checked' : ''}>
                        	black<input type="checkbox" class="colorArray" value="검정" ${pagingCre.paging.colorArray.contains("검정") ? 'checked' : ''}>
                    </li>
                    
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            Price
                        </a>
                        	${minPrice}<input type="range" min="${minPrice}" max="${maxPrice}">${maxPrice}
                    </li>
		               
                    
                    
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            Brand
                        </a>
                        	아디다스<input type="checkbox" class="brandArray" value="ADIDAS" ${pagingCre.paging.brandArray.contains("ADIDAS")? 'checked' :''}>
                        	나이키<input type="checkbox" class="brandArray"  value="NIKE" ${pagingCre.paging.brandArray.contains("NIKE")? 'checked' :''}>
                        	뉴발란스<input type="checkbox" class="brandArray" value="NEWBALANCE" ${pagingCre.paging.brandArray.contains("NEWBALANCE")? 'checked' :''}>
                        	퓨마<input type="checkbox" class="brandArray" value="PUMA" ${pagingCre.paging.brandArray.contains("PUMA")? 'checked' :''}>
                        	컨버스<input type="checkbox" class="brandArray" value="CONVERSE" ${pagingCre.paging.brandArray.contains("CONVERSE")? 'checked' :''}>
                        	닥터마틴<input type="checkbox" class="brandArray" value="DRMARTENS" ${pagingCre.paging.brandArray.contains("DRMARTENS")? 'checked' :''}>
                         
                        
                    </li>
                    
                     <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            품절
                        </a>
                        	품절 제외<input type="checkbox" id="exSoldout" value="1" ${pagingCre.paging.exSoldout == 1 ? 'checked' : ''}  >
                    </li>
                    
                    <li>
                    	<button type="button" id="searchTerm" class="services-icon-wap">검색</button>
                    </li>
                    
                </ul>
            </div>

            <div class="col-lg-9">
                <div class="row">
                    <div class="col-md-6">
                        <ul class="list-inline shop-top-menu pb-3 pt-1">
                            <li class="list-inline-item">
                                <a class="h3 text-dark text-decoration-none mr-3" href="#">All</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="h3 text-dark text-decoration-none mr-3" href="#">Men's</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="h3 text-dark text-decoration-none" href="#">Women's</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-6 pb-4">
                        <div class="d-flex">
                            <select class="form-control" id="arraySelect">
                                <option value="0" ${pagingCre.paging.array == 0 ? 'selected' : ''}>최신순</option>
                                <option value="1" ${pagingCre.paging.array == 1 ? 'selected' : ''}>가격 낮은순</option>
                                <option value="2" ${pagingCre.paging.array == 2 ? 'selected' : ''}>가격 높은순</option>
                            </select>
                        </div>
                    </div>
                </div>
                
                <div class="row"> <!-- 리스트칸의 wrapper  -->
                	<%--  <c:if test="${not empty categoryList}">--%>
		                <c:forEach var="one" items="${categoryList }" varStatus="index"><!-- forEach   -->
			                <div class="col-md-4"> <!-- 리스트 칸 시작 -->
			                        <div class="card mb-4 product-wap rounded-0">
			                            <div class="card rounded-0">
			                                <img class="card-img rounded-0 img-fluid" src="assets/img/shop_01.jpg">
			                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
			                                    <ul class="list-unstyled">
			                                        <li><a class="btn btn-success text-white" href="shop-single.html"><i class="far fa-heart"></i></a></li>
			                                        <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="far fa-eye"></i></a></li>
			                                        <li><a class="btn btn-success text-white mt-2" href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
			                                    </ul>
			                                </div>
			                            </div>
			                            <div class="card-body listOne">
			                                <a href="${contextPath}/detail?prodCode=${one.prodCode}" class="h3 text-decoration-none">${one.prodCode} - ${one.prodName}</a>
			                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
			                                   <input type="hidden" class="prodCodeForList" value="${one.prodCode }" >
			                                   <c:set var="prodKey" value="${one.prodCode }" />
			                                   <li>
					                           
					                           <c:forEach var="one2" items="${listForOpt1[prodKey]}">
					                           	<c:set var="prodKey2" value="${one2.color }" />
					                           	<c:set var="prodKey3" value="${prodKey}-${one2.color }" />
					                           		${prodKey2 }
						                           	<c:forEach var="one3" items="${listForOpt2[prodKey3]}">
						                           		<c:choose>
							                           		<c:when test="${one3.prodCount > 0}">
							                           			<em>
							                           				<c:out value="${one3.prodSize}" />
							                           			</em>
							                           		</c:when>
							                           		<c:otherwise>
							                           			<em>
							                           				<span style="color: gray; text-decoration: line-through;"><c:out value="${one3.prodSize}"/></span>
							                           			</em>
							                           		</c:otherwise>
							                           	</c:choose>	
						                          	</c:forEach>
					                           		<br>
					                           </c:forEach>
					                           
					                           
					                                     
			                                   </li>
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
			                                        <!-- <i class="text-warning fa fa-star"></i>
			                                        <i class="text-warning fa fa-star"></i>
			                                        <i class="text-warning fa fa-star"></i>
			                                        <i class="text-muted fa fa-star"></i>
			                                        <i class="text-muted fa fa-star"></i> -->
			                                        <c:set var="nowIdx" value="${index.index}" />
			                                        <c:choose>
			                                        	<c:when test="${1 <= starList[nowIdx] && starList[nowIdx] < 2}">
			                                        		<i class="text-warning fa fa-star"></i> 
			                                        		<i class="text-muted fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        	</c:when>
			                                        	<c:when test="${2 <= starList[nowIdx] && starList[nowIdx] < 3}">
			                                        		<i class="text-warning fa fa-star"></i> 
			                                        		<i class="text-warning fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        	</c:when>
			                                        	<c:when test="${3 <= starList[nowIdx] && starList[nowIdx] < 4}">
			                                        		<i class="text-warning fa fa-star"></i> 
			                                        		<i class="text-warning fa fa-star"></i>
			                                        		<i class="text-warning fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        	</c:when>
			                                        	<c:when test="${4 <= starList[nowIdx] && starList[nowIdx] < 5}">
			                                        		<i class="text-warning fa fa-star"></i> 
			                                        		<i class="text-warning fa fa-star"></i>
			                                        		<i class="text-warning fa fa-star"></i>
			                                        		<i class="text-warning fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        	</c:when>
														<c:when test="${starList[nowIdx] == 5}">
			                                        		<i class="text-warning fa fa-star"></i> 
			                                        		<i class="text-warning fa fa-star"></i>
			                                        		<i class="text-warning fa fa-star"></i>
			                                        		<i class="text-warning fa fa-star"></i>
			                                        		<i class="text-warning fa fa-star"></i>
			                                        	</c:when>	
			                                        	<c:otherwise>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        		<i class="text-muted fa fa-star"></i>
			                                        	
			                                        	</c:otherwise>		                                        	
			                                        
			                                        </c:choose>
			                                         
			                                    </li>
			                                </ul>
			                                <p class="text-center mb-0"> 
			                                <small>₩<fmt:formatNumber pattern="#,###">${one.sellPrice }</fmt:formatNumber></small> 
			                                </p>
			                            </div>
			                        </div>
			                    </div> <!-- END 리스트 칸-->
													                    
			                    </c:forEach><!--end forEach  -->
			                 <%--  </c:if> --%>
		                </div><!--END 리스트칸의 wrapper  -->
		                
		                <div div="row"><!--paing  -->
		                    <ul class="pagination pagination-lg justify-content-end mypaging">
		                        <!-- <li class="page-item disabled">
		                            <a class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0" href="#" tabindex="-1">1</a>
		                        </li>
		                        <li class="page-item">
		                            <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="#">2</a>
		                        </li>
		                        <li class="page-item">
		                            <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">3</a>
		                        </li> -->
		                    
		                    
		                    	<c:if test="${pagingCre.prev}">
		                    		<li class="page-item">
		                            	<a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="1">&laquo;&laquo;</a>
		                        	</li>
		                    	</c:if>
		                    	
		                    	<c:if test="${pagingCre.prev}">
		                    		<li class="page-item">
		                            	<a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="${pagingCre.startNum - 1}">&laquo;</a>
		                        	</li>
		                    	</c:if>
		                    	
		                    	<!-- 페이징 숫자 부분 -->
		                    	<c:forEach var="pageItem" begin="${pagingCre.startNum}" end="${pagingCre.endNum}" step="1">
		                    		<li class='page-item ${pagingCre.paging.pageNum == pageItem ? "active" : "" }'>
		                            	<a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="${pageItem}">${pageItem}</a>
		                        	</li>
	                    	</c:forEach>
                    	<!-- end 페이징 숫자 부분 -->
                    	
                    	 <c:if test="${pagingCre.next}">
                    		<li class="page-item">
                            	<a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="1">&raquo;</a>
                        	</li>
                    	</c:if>
                    	
                    	<c:if test="${pagingCre.next}">
                    		<li class="page-item">
                            	<a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark" href="${pagingCre.lastNum}">&raquo;&raquo;</a>
                        	</li>
                    	</c:if>
                    
                    
                    
                    
                    </ul>
                </div><!--End paging  -->
            </div>

        </div>
    </div>
    <!-- End Content -->

    <!-- Start Brands -->
    <section class="bg-light py-5">
        <div class="container my-4">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Our Brands</h1>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        Lorem ipsum dolor sit amet.
                    </p>
                </div>
                <div class="col-lg-9 m-auto tempaltemo-carousel">
                    <div class="row d-flex flex-row">
                        <!--Controls-->
                        <div class="col-1 align-self-center">
                            <a class="h1" href="#multi-item-example" role="button" data-bs-slide="prev">
                                <i class="text-light fas fa-chevron-left"></i>
                            </a>
                        </div>
                        <!--End Controls-->

                        <!--Carousel Wrapper-->
                        <div class="col">
                            <div class="carousel slide carousel-multi-item pt-2 pt-md-0" id="multi-item-example" data-bs-ride="carousel">
                                <!--Slides-->
                                <div class="carousel-inner product-links-wap" role="listbox">

                                    <!--First slide-->
                                    <div class="carousel-item active">
                                        <div class="row">
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_01.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_02.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_03.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_04.png" alt="Brand Logo"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End First slide-->

                                    <!--Second slide-->
                                    <div class="carousel-item">
                                        <div class="row">
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_01.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_02.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_03.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_04.png" alt="Brand Logo"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Second slide-->

                                    <!--Third slide-->
                                    <div class="carousel-item">
                                        <div class="row">
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_01.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_02.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_03.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_04.png" alt="Brand Logo"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <!--End Third slide-->

                                </div>
                                <!--End Slides-->
                            </div>
                        </div>
                        <!--End Carousel Wrapper-->

                        <!--Controls-->
                        <div class="col-1 align-self-center">
                            <a class="h1" href="#multi-item-example" role="button" data-bs-slide="next">
                                <i class="text-light fas fa-chevron-right"></i>
                            </a>
                        </div>
                        <!--End Controls-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Brands-->


    <form id="frmSendValue">
        <input type="hidden" name="pageNum" value="${pagingCre.paging.pageNum}">
        <input type="hidden" name="gender" value="${pagingCre.paging.gender}">
        <input type="hidden" name="category" value="${pagingCre.paging.category}">
        <input type="hidden" name="keyword" value="${pagingCre.paging.keyword}">
        
        <%-- <div id="sizeDiv">
	        <c:choose>
		        <c:when test="${pagingCre.paging.sizeArray != null}">
			        <c:forEach var="size" items="${pagingCre.paging.sizeArray}">
			        	<input type="hidden" name="sizeArray" value="${size}">
			        </c:forEach>
		        </c:when>
		        
		        <c:otherwise>
		        	<input type="hidden" name="sizeArray">	
		        </c:otherwise>
	        </c:choose>
        </div>   --%>
             
         
        <input type="hidden" name="sizeArray" value="${pagingCre.paging.sizeArray}">	
        <!-- 231003전 보전이후 바꾸는 것  -->
       	<input type="hidden" name="colorArray" value="${pagingCre.paging.colorArray}">
       	<input type="hidden" name="brandArray" value="${pagingCre.paging.brandArray}">
        <input type="hidden" name="exSoldout" value="${pagingCre.paging.exSoldout}">
        <input type="hidden" name="array" value="${pagingCre.paging.array}">
         

    </form>


	
	<!-- 스크립트 시작  -->
	<script>
		
        var frmSendValue = $("#frmSendValue");
    	var sizeChoice = "";
    	var colorChoice = "";
    	var brandChoice = "";
    	var exSoldout = 0;
    		
        

        //검색 옵션
        $("#searchTerm").on("click",function(){
        	
        	
        	 
        	frmSendValue.find("input[name='pageNum']").val(1);
        	frmSendValue.find("#div").empty();
        	
     /*    	var newInput = $("<input>").attr("type","hidden").attr("name","sizeArray") ;
        	frmSendValue.find("#div").append(newInput);
        	 */
        	
        	
        	sizeChoice = $(".sizeArray:checked").map(function(){
    			return $(this).val();
    		}).get() ;
        
        	
        	
        	colorChoice = $(".colorArray:checked").map(function(){
    			return $(this).val();
    		}).get() ;
        
        
        	brandChoice = $(".brandArray:checked").map(function(){
    			return $(this).val();
    		}).get() ;
        
        	 
        	  
        	 
        	frmSendValue.find("input[name='sizeArray']").val(sizeChoice.join(","));
        	frmSendValue.find("input[name='colorArray']").val(colorChoice.join(","));
        	frmSendValue.find("input[name='brandArray']").val(brandChoice.join(","));
        	
			if($("#exSoldout").prop("checked")){
        	exSoldout = parseInt($("#exSoldout").val());
        	};
        	
        	frmSendValue.find("input[name='exSoldout']").val(exSoldout);

        	frmSendValue.attr("method","GET");
            frmSendValue.attr("action","${contextPath}/list");

            frmSendValue.submit();
         
        	
        })//$("searchTerm") end
        
        //정렬 순
        $("#arraySelect").on("change",function(){
        	var arrayFlag = parseInt($("#arraySelect").attr("option","selected").val());
        	
            frmSendValue.find("input[name='pageNum']").val(1);
            frmSendValue.find("input[name='array']").val(arrayFlag);
            
            frmSendValue.attr("method","GET");
            
            frmSendValue.attr("action","${contextPath}/list");

            frmSendValue.submit();
        		
        })
        
        
		//페이징
		$(".page-item a").on("click",function(e){
            e.preventDefault();
            
            
            frmSendValue.find("input[name='pageNum']").val($(this).attr("href")) ;
            frmSendValue.attr("method","GET");
             
            frmSendValue.attr("action","${contextPath}/list");

            frmSendValue.submit();
 
        })
        
        
        //클릭시 페이지 이동
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</script>



















<%@include file="./include/footer.jsp" %>

</body>
</html>