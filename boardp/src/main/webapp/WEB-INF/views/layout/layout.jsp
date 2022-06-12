<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="resources" value="${pageContext.request.contextPath}/resources"/>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="${resources}/js/jquery-3.5.1.min.js"></script>
</head>
<body>
		<div class="page bg-dark light-content" id="top">
			<tiles:insertAttribute name="header"/>
				<tiles:insertAttribute name="body"/>
			<tiles:insertAttribute name="footer"/>
		</div>
	</body>
</html>