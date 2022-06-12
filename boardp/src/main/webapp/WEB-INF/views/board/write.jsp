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
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<style>
body {
	background: @BACKGROUND;
	font-family: "Varela Round", Nunito, Montserrat, sans-serif;
	margin: 0;
	padding: 0;
	text-transform: capitalize;
}

tr {
	border: 1px;
	line-height: 50px;
}

td {
	width: 250px;
}

.button {
	background-color: orange;
	width: 80px;
	height: 30px;
	border: none;
	border-radius: 2px;
	padding: 2px 1px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 10px 1px;
	cursor: pointer;
	float: center;
}
</style>
</head>
<body>
		<div class="input-md round form-control" align="center">
	<form action="writePost.do" method="post">
			<h3>
				<label for="title">title</label>
			</h3>
			<input type="text" id="title" name="title" required="required"
				class="input-md round form-control" placeholder="Enter title"
				maxlength="100">

			<h3>
				<label for="subject">Subject</label>
			</h3>
			<input type="text" id="subject" name="subject" required="required"
				class="input-md round form-control" placeholder="Enter subject"
				col="5"
				maxlength="400">

			<div class="input-md round form-control">
				<h1 class="blog-page-title"></h1>
				<!-- Send Button -->
				<button type="submit" class="input-md round form-control">submit</button>
	</form>
	<button type="reset" class="input-md round form-control">cancel</button>

	<button onclick="location.href='free.do'">목록으로</button>
	</div>
</body>

</html>