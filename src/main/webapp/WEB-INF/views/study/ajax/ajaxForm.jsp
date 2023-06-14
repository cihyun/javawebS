<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ajaxForm.jsp</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
<script type="text/javascript">
	'use strict';
	
	function ajaxTest1(idx){
		$.ajax({
			type   : "post",
			url    : "${ctp}/study/ajax/ajaxTest1",
			data   : {idx : idx},
			success:function(res) {
  			$("#demo").html(res);
  		},
  		error : function() {
  			alert("전송오류!");
  		}
		});
	}
</script>

</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<div class="container">
<div class="mt-5"></div>
	<h2>AJax 연습</h2>
	<hr />
	<p class="mb-2">기본(String)
		<a href="javascript:ajaxTest1(10)" class="btn btn-secondary mr-2">값 전달1</a>
		<i class="fa fa-hand-o-right" aria-hidden="true"></i>
		<span id="demo"></span>
	</p>
	<p class="mb-2">응용1(배열)
		<a href="${ctp}/study/ajax/ajaxTest2_1" class="btn btn-secondary mr-2">시(도)/구(시,군,동)(String 배열)</a>
		<a href="${ctp}/study/ajax/ajaxTest2_2" class="btn btn-secondary mr-2">시(도)/구(시,군,동)(ArrayList 배열)</a>
		<a href="${ctp}/study/ajax/ajaxTest2_3" class="btn btn-secondary mr-2">시(도)/구(시,군,동)(Map-HashMap)</a>
	</p>
	<p class="mb-2">응용1(DB)
		<a href="${ctp}/study/ajax/ajaxTest3" class="btn btn-secondary mr-2">회원 아이디검색</a>
	</p>
</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>