<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="resources"
	value="${pageContext.request.contextPath}/resources" />
<c:set var="root" value="${pageContext.request.contextPath}" />

<div align="center">
<h1><a href="${root}/home.do"> home </a></h1>
<li><a href="${root}/board/free.do">게시글 list </a></li>
</ul>
 </div>

