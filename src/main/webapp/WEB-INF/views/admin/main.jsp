<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath }"/><%-- 
<sec:authentication property="principal" var="principal"/> --%>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN</title>

 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
<%@ include file="/WEB-INF/views/include/adminHeader.jsp" %>

<h2 class="h5 text-center mt-3 mb-3">admin main</h2>

<%@ include file="/WEB-INF/views/include/adminFooter.jsp" %>
 
</body>
</html>