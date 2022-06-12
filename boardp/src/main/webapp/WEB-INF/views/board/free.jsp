<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="resources"
	value="${pageContext.request.contextPath }/resources" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
tr {
	text-decoration: bold;
	font-size: 20px;
	border: 10px;
	line-height: 30px;
}

td {
	border: 1;
	text-align: center;
	margin: 10px 1px;
	cursor: pointer;
}

.button {
	width: 100px;
	height: 40px;
	border: none;
	border-radius: 5px;
	padding: 2px 1px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 20px;
	margin: 10px 1px;
	cursor: pointer;
	float: right;
}
</style>
</head>
<body>
	<div align="center">
		<section class="page-section bg-dark light-content" id="home">
			<div class="container relative text-center">
				<div class="row">
					<div class="col-lg-10 offset-lg-1">
						<h1 class="hs-line-7 mb-0 wow fadeInUpShort" data-wow-delay=".2s">List 
							</h1>
						<div align="center">
							<input class="btn btn-mod btn-round btn-border-w btn-small"
								type="button" value="글쓰기" onclick="location.href='write.do'">
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="page-section bg-dark light-content pt-0">
			<div class="container relative">
				<!-- 검색 -->
				<div class="table-responsive">
					<table class="table shopping-cart-table">
						<tr align="center">
							<th width="50">No</th>
							<th width="100">작성자</th>
							<th width="300">제목</th>
							<th width="100">작성일자</th>
							<th width="50">조회수</th>
							<th width="50">추천수</th>
						</tr>
						<c:forEach items="${boardList}" var="list">
							<tr class="active" onclick="freeSelect(${list.boardNo})">
								<td>${list.boardNo}</td>
								<td>${list.writer}</td>
								<td>${list.title}</td>
								<td><c:set var="ymd" value="<%=new java.util.Date()%>" />
									<fmt:formatDate value="${ymd}" pattern="yy-MM-dd" /> <!--<fmt:formatDate value="${list.boardDate}" pattern="yyyy-MM-dd"/>-->
								</td>
								<td>${list.hit}</td>
								<td>${list.recommend}</td>
							</tr>
						</c:forEach>
					</table>

				</div>
			</div>
			<br>

			<form action="boardSelect.do" method="post" id="boardSS">
				<input type="hidden" name="boardNo" id="boardSe" />
			</form>


		</section>
	</div>


	<script src="${resources}/js/common/jQueryPage.js"></script>


	<script>

	 function freeSelect(no){
			location.href = "boardSelect.do?boardNo=" + no;
		 }
 // 상세페이지 가는 함수
 function boardSelect(no){
	boardSS.boardSe.value= no;
	boardSS.submit(); 
	}
</script>
</body>
</html>