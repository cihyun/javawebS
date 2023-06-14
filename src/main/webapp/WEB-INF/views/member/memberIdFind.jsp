<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>memberIdFind.jsp</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<div class="container">
<div class="mt-5"></div>
	<h2>아이디 찾기</h2>
	<p>닉네임과 이메일 주소 확인 후 아이디찾기</p>
	<form method="post">
		<table class="table table-bordered">
			<tr>
				<th>닉네임</th>
				<td>
					<input type="text" name="nickName" id="nickName" class="form-control" autofocus required />
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
					<input type="text" name="toMail" id="toMail" class="form-control" required />
				</td>
			</tr>
		</table>
		<hr />
		
		<div class="text-center">
			<input type="submit" value="아이디 찾기" class="btn btn-success" data-toggle="modal" data-target="#myModal" />
			<input type="reset" value="다시입력" class="btn btn-warning" />
			<input type="button" value="돌아가기" onclick="location.href='${ctp}/member/memberLogin';" class="btn btn-secondary" />
		</div>
		
		<%-- <c:if test="${!empty mid}">
			<div class="modal fade" id="myModal">
		    <div class="modal-dialog">
		      <div class="modal-content">
		      
		        <!-- Modal Header -->
		        <div class="modal-header">
		          <h4 class="modal-title">Modal Heading</h4>
		          <button type="button" class="close" data-dismiss="modal">&times;</button>
		        </div>
		        
		        <!-- Modal body -->
		        <div class="modal-body">
		          Modal body..
		        </div>
		        
		        <!-- Modal footer -->
		        <div class="modal-footer">
		          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        </div>
		        
		      </div>
		    </div>
		  </div>
  	</c:if> --%>
  	
		<c:if test="${!empty mid}">
			<div>
				입력하신 정보와 일치하는 아이디는 ${mid} 입니다.
			</div>
		</c:if>
		
			
		
		
	</form>
</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>