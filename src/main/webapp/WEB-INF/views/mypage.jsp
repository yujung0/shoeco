<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

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

<section class="container py-5">
    <div class="bd-example">
        <nav>
            <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
                <button class="nav-link active" id="nav-payment-tab" data-bs-toggle="tab" data-bs-target="#nav-mypage" type="button" role="tab" aria-controls="nav-mypage" aria-selected="true">MyPage</button>
                <button class="nav-link" id="nav-payment-tab" data-bs-toggle="tab" data-bs-target="#nav-payment" type="button" role="tab" aria-controls="nav-payment" aria-selected="false">결제내역</button>
                <button class="nav-link" id="nav-mileage-tab" data-bs-toggle="tab" data-bs-target="#nav-mileage" type="button" role="tab" aria-controls="nav-mileage" aria-selected="false">마일리지</button>
                <button class="nav-link" id="nav-QNA-tab" data-bs-toggle="tab" data-bs-target="#nav-QNA" type="button" role="tab" aria-controls="nav-QNA" aria-selected="false">문의내역</button>
                <button class="nav-link" id="nav-review-tab" data-bs-toggle="tab" data-bs-target="#nav-review" type="button" role="tab" aria-controls="nav-review" aria-selected="false">리뷰 작성내역</button>
                <button class="nav-link" id="nav-modify-tab" data-bs-toggle="tab" data-bs-target="#nav-modify" type="button" role="tab" aria-controls="nav-modify" aria-selected="false">회원정보 수정</button>
                <button class="nav-link" id="nav-withdraw-tab" data-bs-toggle="tab" data-bs-target="#nav-withdraw" type="button" role="tab" aria-controls="nav-withdraw" aria-selected="false">회원 탈퇴</button>
            </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
            <!-- 각 탭의 내용을 동적으로 표시할 공간 -->
            <div class="tab-pane fade" id="nav-mypage" role="tabpanel" aria-labelledby="nav-mypage-tab">
                <p><strong>mypage</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
            </div>
            <div class="tab-pane fade" id="nav-payment" role="tabpanel" aria-labelledby="nav-payment-tab">
                <p><strong>payment</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
            </div>
            <div class="tab-pane fade" id="nav-mileage" role="tabpanel" aria-labelledby="nav-mileage-tab">
                <p><strong>mileage</strong> Clicking another tab will toggle the visibility of this one for the next. The tab JavaScript swaps classes to control the content visibility and styling. You can use it with tabs, pills, and any other <code>.nav</code>-powered navigation.</p>
            </div>
            <div class="tab-pane fade" id="nav-QNA" role="tabpanel" aria-labelledby="nav-QNA-tab">
                <!-- 문의내역 탭 내용 -->
                <section class="container py-5">
                    <div class="row text-left pt-3">
                        <div class="col-lg-10 m-auto">
                            <table class="table table-hover" id="questionTable">
                                <thead style="text-align: center;">
                                    <tr class="table-dark">
                                        <th>문의번호</th>
                                        <th>제목</th>
                                        <th>작성일</th>
                                        <th>수정일</th>
                                        <th>작성자</th>
                                        <th>답변여부</th>
                                    </tr>
                                </thead>
                                <tbody style="text-align: center;">
                                    <!-- 문의내역 데이터를 동적으로 추가할 공간 -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
                <div style="text-align: center;">
                    <ul class="pagination justify-content-center" id="questionPagination">
                        <!-- 페이징 버튼을 동적으로 추가할 공간 -->
                    </ul>
                </div>
                <div style="text-align: right;">
                    <button class="btn btn-primary" id="openQuestionModal" onclick="openQuestionModal()"><strong>문의하기</strong></button>
                </div>
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

<!-- 모달 마크업 -->
<div class="modal fade" id="questionModal" tabindex="-1" aria-labelledby="questionModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="questionModalLabel">문의하기</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- 작성 페이지 내용 -->
                <form id="questionForm">
                    <div class="mb-3">
                        <label for="qnaQTitle" class="form-label">문의 제목</label>
                        <input type="text" class="form-control" id="qnaQTitle" name="qnaQTitle" required>
                    </div>
                    <div class="mb-3">
                        <label for="qnaQContent" class="form-label">문의 내용</label>
                        <textarea class="form-control" id="qnaQContent" name="qnaQContent" rows="4" required></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary" onclick="submitQuestion()">문의 등록</button>
            </div>
        </div>
    </div>
</div><!-- 모달 end -->

<%@include file="./include/footer.jsp" %>

<script>

	function formatDate(timestamp) {
	    var date = new Date(timestamp);
	    var year = date.getFullYear();
	    var month = ('0' + (date.getMonth() + 1)).slice(-2);
	    var day = ('0' + date.getDate()).slice(-2);
	    return year + '/' + month + '/' + day;
	}
	
	$(document).ready(function() {
	    // 탭 클릭 이벤트를 처리합니다.
	    $('#nav-tab').on('click', 'button', function() {
	        var target = $(this).data('bs-target');
	        $('.tab-pane').removeClass('active show');
	        $(target).addClass('active show');
	        
	        if (target === "#nav-QNA") {
	            // 페이지 번호를 1로 초기화하고 문의내역을 가져오는 함수를 호출합니다.
	            getQuestionList(1);
	        }
	    });
	});
	
	// 문의내역을 가져오는 함수
	function getQuestionList(pageNum) {
	    $.ajax({
	        url: "${contextPath}/mypage/question",
	        type: "GET",
	        data: { pageNum: pageNum },
	        dataType: "json",
	        success: function(data) {
	            var questionTable = $("#questionTable tbody");
	            questionTable.empty();

	            for (var i = 0; i < data.questionList.length; i++) {
	                var question = data.questionList[i];
	                var row = "<tr class='text-secondary-emphasis'>" +
	                          "<td>" + question.qnaQNo + "</td>" +
	                          "<td>" + question.qnaQTitle + "</td>" +
	                          "<td>" + formatDate(question.qnaQWriteDate) + "</td>" +
	                          "<td>" + formatDate(question.qnaQModifyDate) + "</td>" +
	                          "<td>" + question.userId + "</td>" +
	                          "<td>" + question.qnaDelFlag + "</td>" +
	                          "</tr>";
	                questionTable.append(row);
	            }
		            
		            var pagination = $("#questionPagination");
		            pagination.empty();
		            
		            if (data.pagingCreator.prev) {
		                pagination.append("<li class='page-item'><a class='page-link' href='javascript:getQuestionList(" + (data.pagingCreator.startNum - 1) + ")'>이전</a></li>");
		            }
		            
		            for (var pageNum = data.pagingCreator.startNum; pageNum <= data.pagingCreator.endNum; pageNum++) {
		                var activeClass = (pageNum === data.pagingCreator.cartPagingDTO.pageNum) ? "active" : "";
		                pagination.append("<li class='page-item " + activeClass + "'><a class='page-link' href='javascript:getQuestionList(" + pageNum + ")'>" + pageNum + "</a></li>");
		            }
		            
		            if (data.pagingCreator.next) {
		                pagination.append("<li class='page-item'><a class='page-link' href='javascript:getQuestionList(" + (data.pagingCreator.endNum + 1) + ")'>다음</a></li>");
		            }
		        },
		        error: function(xhr, status, error) {
		            console.error(error);
		        }
		    });
		}
	
	//문의버튼 클릭 시 모달창 띄움
	function openQuestionModal() {
	    $('#questionModal').modal('show');
	}
	
	// 등록 버튼 클릭 시 실행되는 함수
	function submitQuestion() {
	    var qnaQTitle = $("#qnaQTitle").val(); // 문의 제목 입력값 가져오기
	    var qnaQContent = $("#qnaQContent").val(); // 문의 내용 입력값 가져오기

	    var requestData = {
	        qnaQTitle: qnaQTitle,
	        qnaQContent: qnaQContent
	    };

	    $.ajax({
	        url: "${contextPath}/mypage/register", // 컨트롤러의 엔드포인트 주소
	        type: "POST", // 또는 POST 등 HTTP 메서드 선택
	        data: requestData, // 전달할 데이터
	        dataType: "json", // 응답 데이터 형식
	        success: function(response) {
	            // 성공적으로 등록되었을 때 처리
	            console.log("문의 등록 성공");
	            
	            // 모달 닫기
	            $('#questionModal').modal('hide');
	            
	            // 등록 후 문의 목록 다시 불러오기
	            getQuestionList(1);
	        },
	        error: function(xhr, status, error) {
	            // 오류 발생 시 처리
	            console.error(error);
	        }
	    });
	}
</script>
