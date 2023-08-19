<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%@include file="./include/header.jsp" %>
 

 

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
                 <!--    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            Size
                            <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul class="collapse show list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#">Men</a></li>
                            <li><a class="text-decoration-none" href="#">Women</a></li>
                        </ul>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            Color
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#">Sport</a></li>
                            <li><a class="text-decoration-none" href="#">Luxury</a></li>
                        </ul>
                    </li> -->
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            Size
                        </a>
                    <!--     	220<input type="checkbox" value="220" >
                        	225<input type="checkbox" value="225">
                        	225<input type="checkbox" value="235">
                        	<input type="checkbox" value="240">
                        	<input type="checkbox" value="245">
                        	<input type="checkbox" value="250">
                        	<input type="checkbox" value="255">
                        	<input type="checkbox" value="260">
                        	<input type="checkbox" value="265">
                        	<input type="checkbox" value="270">
                        	<input type="checkbox" value="275">
                        	<input type="checkbox" value="280">
                        	<input type="checkbox" value="285">
                        	<input type="checkbox" value="290">
                        	<input type="checkbox" value="295">
                     -->
                    	<c:forEach var="sizeOne" begin="220" step="5" end="300" >
                    		<c:out value="${sizeOne}"/> <input type="checkbox" class="sizeArray" value="${sizeOne}" id="<c:out value='${sizeOne}'/>">	
                    	</c:forEach>
                    
                    </li>
                     <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            Color
                        </a>
                        	red<input type="checkbox" value="red" >
                        	blue<input type="checkbox" value="blue">
                        	yellow<input type="checkbox" value="yellow">
                        	white<input type="checkbox" value="white">
                        	black<input type="checkbox" value="black">
                         
                        
                    </li>
                    
                     <%--  <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            Price
                        </a>
                        	${minPrice}<input type="range" min="${minPrice}" max="${maxPrice}">${maxPrice}
                         
                        
                    </li> --%>
                    <!-- 검색 결과 페이지가 뜨지 않을때  range 표시 -->
	 			<%-- 	<c:choose>	
	 					<c:when test="${minPrice} != null">
		                     <li class="pb-3">
		                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
		                            Price
		                        </a>
		                        	${minPrice}<input type="range" min="${minPrice}" max="${maxPrice}">${maxPrice}
		                    </li>
		                </c:when>  

		                <c:otherwise>
		                     <li class="pb-3">
		                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
		                            Price
		                        </a>
		                        	0<input type="range" min="0" max="${totalMaxPrice}">${totalMaxPrice}
		                    </li>
		                
		                
		                </c:otherwise> 
                    </c:choose> --%>
                    
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
                        	아디다스<input type="checkbox" value="아디다스" >
                        	나이키<input type="checkbox" value="나이키">
                        	뉴발란스<input type="checkbox" value="뉴발란스">
                        	컨버스<input type="checkbox" value="컨버스">
                        	퓨마<input type="checkbox" value="퓨마">
                        	닥터마틴<input type="checkbox" value="닥터마틴">
                         
                        
                    </li>
                    
                    
                    <li>
                    	<button type="button" id="searchTerm">검색</button>
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
                                <option>Featured</option>
                                <option>A to Z</option>
                                <option>Item</option>
                            </select>
                        </div>
                    </div>
                </div>
                
                <!--230819 arraySelect 생성  -->
                
                <form action="${contextPath}/list" method="get">
                	<input type="hidden" id="arrayOption" name="array">
                
                </form>
                
                
                <div class="row"> <!-- 리스트칸의 wrapper  -->
                	<%--  <c:if test="${not empty categoryList}">--%>
		                <c:forEach var="one" items="${categoryList }"><!-- forEach   -->
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
			                            <div class="card-body">
			                                <a href="shop-single.html" class="h3 text-decoration-none">${one.prodCode} 의 ${one.prodName}</a>
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
			                                <p class="text-center mb-0">${one.sellPrice }</p>
			                            </div>
			                        </div>
			                    </div> <!-- END 리스트 칸-->
													                    <!-- <div class="col-md-4"> 리스트 칸 시작 //원본
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
													                    </div> END 리스트 칸 -->
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
             
        <div id="sizeDiv">
        	<input type="hidden" name="sizeArray" value="${pagingCre.paging.sizeArray}">	
		        
        </div>       
             
             
        <c:forEach var="color" items="${pagingCre.paging.colorArray}">
        	<input type="hidden" name="colorArray" value="${color}">
        </c:forEach>
        
        <c:forEach var="brand" items="${pagingCre.paging.brandArray}">
        	<input type="hidden" name="brandArray" value="${brand}">
        </c:forEach>
        
        <input type="hidden" name="exSoldout" value="${pagingCre.paging.exSoldout}">
        <input type="hidden" name="array" value="${pagingCre.paging.array}">
         

    </form>


	
	<!-- 스크립트 시작  -->
	<script>
		
        var frmSendValue = $("#frmSendValue");
    	var sizeChoice = "";
    		
        

        //검색 옵션
        $("#searchTerm").on("click",function(){
        	
        	
        	 
        	frmSendValue.find("input[name='pageNum']").val(1);
        	frmSendValue.find("#div").empty();
        	
        	var newInput = $("<input>").attr("type","hidden").attr("name","sizeArray") ;
        	frmSendValue.find("#div").append(newInput);
        	
        	
        	
        	sizeChoice = $(".sizeArray:checked").map(function(){
    			return $(this).val();
    		}).get() ;
        
        	
        	console.log(sizeChoice);
        	
        	 
        	  
        	 
        	frmSendValue.find("input[name='sizeArray']").val(sizeChoice.join(","));
        	frmSendValue.attr("method","GET");
            frmSendValue.attr("action","${contextPath}/list");

            frmSendValue.submit();
         
        	
        })//$("searchTerm") end
        
        
        
        
		//페이징
		$(".page-item a").on("click",function(e){
            e.preventDefault();
            
            
            frmSendValue.find("input[name='pageNum']").val($(this).attr("href")) ;
            frmSendValue.attr("method","GET");
             
            frmSendValue.attr("action","${contextPath}/list");

            frmSendValue.submit();
 
        })
        
        
        
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</script>



















<%@include file="./include/footer.jsp" %>

</body>
</html>