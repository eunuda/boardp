<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description"
	content="Rhythm &mdash; One & Multi Page Creative Template">
<meta name="author"
	content="https://themeforest.net/user/bestlooker/portfolio">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>write here</title>
</head>
<body>

	<section class="page-section bg-dark light-content">
		<div align="center" class="container">
			<div class="col-md-6 mb-md-20">
				<h1>수정</h1>
				<form action="boardUpdate.do" method="post">
					<table>
						<tr>
							<td>Title</td>
							<td><input type="text" value="${board.title}" name="title"
								id="title"></td>
						</tr>
						<tr>
							<td>Subject</td>
							<td><textarea rows="5" cols="30" name="subject" id="subject">${board.subject}</textarea>
						</tr>

					</table>
					<button type="submit" class="button">수정</button>
				</form>



				<a href="free.do" class="btn btn-mod btn-g btn-small btn-square">목록으로</a>
				<br>


			</div>


		</div>
		</div>
	</section>
</body>
</html>
