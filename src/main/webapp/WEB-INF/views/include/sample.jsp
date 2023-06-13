<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- [ Start ] 페이징 처리 4페이지(1블록)에서 0블록으로 가게되면 현재페이지는 1페이지가 블록의 시작페이지가 된다. -->
  <!-- 첫페이지 / 이전블록 / 1(4) 2(5) 3 / 다음블록 / 마지막페이지 -->
  <div class="text-center">
	  <ul class="pagination justify-content-center">
	    <c:if test="${pageVO.pag > 1}">
	    	<li class="page-item">
	    		<a class="page-link text-secondary" href="${ctp}/guest/guestList?pageSize=${pageVO.pageSize}&pag=1">
	    			<i class="fa fa-angle-double-left" aria-hidden="true"></i>
	    		</a>
	    	</li>
	    </c:if>
	    <c:if test="${pageVO.curBlock > 0}">
	    	<li class="page-item">
	    		<a class="page-link text-secondary" href="${ctp}/guest/guestList?pageSize=${pageVO.pageSize}&pag=${(pageVO.curBlock-1)*pageVO.blockSize + 1}">
	    			<i class="fa fa-angle-left" aria-hidden="true"></i>
	    		</a>
	    	</li>
	    </c:if>
	    <c:forEach var="i" begin="${pageVO.curBlock*pageVO.blockSize + 1}" end="${pageVO.curBlock*pageVO.blockSize + pageVO.blockSize}" varStatus="st">
	      <c:if test="${i <= pageVO.totPage && i == pageVO.pag}">
	      	<li class="page-item active">
	      		<a class="page-link text-white bg-secondary border-secondary" href="${ctp}/guest/guestList?pageSize=${pageVO.pageSize}&pag=${i}">${i}</a>
	      	</li>
	      </c:if>
	      <c:if test="${i <= pageVO.totPage && i != pageVO.pag}">
	      	<li class="page-item">
	      		<a class="page-link text-secondary" href="${ctp}/guest/guestList?pageSize=${pageVO.pageSize}&pag=${i}">${i}</a>
	      	</li>
	      </c:if>
	    </c:forEach>
	    <c:if test="${pageVO.curBlock < pageVO.lastBlock}">
	    	<li class="page-item">
	    		<a class="page-link text-secondary" href="${ctp}/guest/guestList?pageSize=${pageVO.pageSize}&pag=${(pageVO.curBlock+1)*pageVO.blockSize + 1}">
	    			<i class="fa fa-angle-right" aria-hidden="true"></i>
	    		</a>
	    	</li>
	    </c:if>
	    <c:if test="${pageVO.pag < pageVO.totPage}">
	    	<li class="page-item">
	    		<a class="page-link text-secondary" href="${ctp}/guest/guestList?pageSize=${pageVO.pageSize}&pag=${pageVO.totPage}">
	    		<i class="fa fa-angle-double-right" aria-hidden="true"></i>
	    		</a>
	    	</li>
	    </c:if>
	  </ul>
  </div>
	<!-- [ End ] 페이지 -->