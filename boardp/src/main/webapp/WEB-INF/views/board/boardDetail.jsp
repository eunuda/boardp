<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="resources"
	value="${pageContext.request.contextPath}/resources" />
<div class="container relative pt-100">
	<div class="row">
	
		<div class="col-lg-10 offset-lg-1">
				<div align="center">
			<h2>상세</h2>
					<input class="btn btn-mod btn-round btn-border-w btn-small"
						type="button" value="목록" onclick="location.href='free.do'">
					<input class="btn btn-mod btn-round btn-border-w btn-small"
						type="button" onclick="location.href='boardUpdateForm.do?'"
						value="수정">


					<button>
						<a href='boardDelete.do?boardNo=${board.boardNo}'
							class="btn btn-mod btn-round btn-border-w btn-small">삭제</a>
					</button>

					<br> <br> <br><h2> <input type="hidden"
						value="${board.title}" name="title" id="title">${board.title}
			</h2>
			<br> <br>

			<div class="table-responsive">
				<form action="boardUpdateForm.do">
					<input type="hidden" name="boardTypeNo" value="${board.boardNo}">

					<table align="center">
						    <tr>
							<th>#${board.boardNo}</th>
							<tr>
					     	<th>작성자 : ${board.writer }</th>
					     	<tr>
							<th>조회수 : ${board.hit}</th>
							<tr>
							<th>추천수 : ${board.recommend}</th>
    						<tr>
							<th style="vertical-align: top;" height="500px" colspan="4"><input
								type="hidden" value="${board.subject}" name="subject"
								id="subject">${board.subject}</th>
						
						<tr>
						
						</tbody>
					</table>
				</form>

				<div align="right" class="col">
					<c:if test="${board.boardTypeNo != 1}">
							<p class="btn btn-mod btn-round btn-border-w btn-small"
							id="recommenBtn">게시글추천</p>
							<h1 class="blog-page-title"></h1>

							<form action="commentPost.do" method="post">
								<textarea style="width: 100%" rows="1" cols="400"
								id="commentSub" name="commentSub" required="required"
								class="input-md square form-control"
								placeholder="Enter Comment... " maxlength="400"></textarea>
								<br>
							</form>
						</sec:authorize>
					</c:if>
				</div>

			</div>
		</div>
	</div>
</div>

</div>
</div>


</div>
</section>






</script>
</body>
</html>