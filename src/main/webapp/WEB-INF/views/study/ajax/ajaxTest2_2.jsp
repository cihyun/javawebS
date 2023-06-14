<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ajaxTest2_2.jsp</title>
<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
<script type="text/javascript">
	'use strict';
	
	function fCheck(){
		let dodo = $("#dodo").val();
		let city = $("#city").val();
		
		if(dodo == "" || city == ""){
			alert("지역을 선택하세요");
			return false;
		}
		let str = "선택하신 지역은? " + dodo + " / " + city + ' &nbsp;';
  	str += '<input type="button" value="다시검색" onclick="location.reload()" class="btn btn-primary btn-sm"/>';
  	$("#demo").html(str);
		
	}
	$(function(){
  	$("#dodo").change(function(){
  		let dodo = $(this).val();
  		if(dodo == "") {
  			alert("지역을 선택하세요!");
  			return false;
  		}
  		$.ajax({
  			type    : "post",
  			url     : "${ctp}/study/ajax/ajaxTest2_2",
  			data    : {dodo : dodo},
  			success :function(res) {
  				// alert("res : " + res);
  				let str = '';
  				str += '<option value="">도시선택</option>';
  				for(let i=0; i<res.length; i++) {
  					if(res[i] == null) break;
  					str += '<option>'+res[i]+'</option>';
  				}
  				$("#city").html(str);
  			},
  			error   : function() {
  				alert("전송오류!");
  			}
  		});
  	});
  });
</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/nav.jsp" />
<jsp:include page="/WEB-INF/views/include/slide2.jsp" />
<div class="container">
<div class="mt-5"></div>
	<h2>AJax를 활용한 값의 전달(ArrayList 배열)</h2>
	<hr />
	<h3>도시를 선택하세요 </h3>
	<form name="myform">
		<div class="form-group">
			<div class="row">
				<select name="dodo" id="dodo" class="form-control col">
					<option value="">지역선택</option>
					<option>서울</option>
					<option>경기</option>
					<option>충북</option>
					<option>충남</option>
					<option>경북</option>
				</select>
				<select name="city" id="city" class="form-control col ml-2">
					<option>도시선택</option>
				</select>
				<input type="button" value="선택" onclick="fCheck()" class="btn btn-success ml-2">
				<input type="button" value="돌아가기" onclick="location.href='${ctp}/study/ajax/ajaxForm';" class="btn btn-secondary ml-2">
			</div>
			<hr />
			<div id="demo"></div>
		</div>
	</form>
</div>
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>