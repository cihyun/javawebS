<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>sha256.jsp</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
<script type="text/javascript">
	'use strict';
	let str = '';
	let cnt = 0;
	
	function sha256Check(){
	let pwd = document.getElementById("pwd").value;
	
	$.ajax({
		type    : "post",
		url     : "${ctp}/study/password/sha256",
		data    : {pwd : pwd},
		success : function(res){
			cnt++;
			str += cnt + ":" + res + "<br />";
			$("#demo").html(str);
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
	<h2>SHA-256</h2>
	<p>
		SHA 암호화 방식은 SHA(Secure Hash Algorithm) 알고리즘의 한 종류로서, 256비트로 구성되며 32 자리 문자열로 구성된다.<br />
		SHA256은 단방향 암호화 방식이기에 복호화가 불가능하고, 속도가 빠르다는 장점이 있다.
	</p>
	<hr />
	<p>
		<input type="text" name="pwd" id="pwd" autofocus />
		<input type="button" value="sha256암호화" onclick="sha256Check()" autofocus class="btn btn-primary" />
		<input type="button" value="다시하기" onclick="location.reload()" class="btn btn-success" />
	</p>
	<hr />
	<div>출력결과</div>
    <span id="demo"></span>
</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>