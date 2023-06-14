<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>memberMain.jsp</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<div class="container">
<div class="mt-5"></div>
	<h2>마이페이지</h2>
	<hr />
	<div>
		<p><font color="purple" size="5"><b>${sNickName}</b>님 안녕하세요!</font></p>
		<p>회원님의 현재 등급은 [<strong>${strLevel}</strong>] 입니다.</p>
	</div>
	<c:if test="${!empty sImsiPwd}">
	<hr />
		<p>
			현재 임시 비밀번호를 발급받아 사용중입니다.<br />
			개인정보를 확인하시고 비밀번호를 변경해 주세요.
		</p>
		<a href="${ctp}/member/memberPwdUpdate" class="btn btn-outline-secondary">비밀번호 변경</a>
	</c:if>
	<!-- 회원의 기본정보들을 출력시켜준다.(포인트... 방문횟수, .....등등...) -->
</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>