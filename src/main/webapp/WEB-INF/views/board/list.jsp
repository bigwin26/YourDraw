<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="Path" value="${pageContext.request.contextPath}" />
<c:set var="now" value="<%=new java.util.Date()%>" />
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>YourDraw</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${Path}/resources/css/main.css" />
<noscript>
	<link rel="stylesheet" href="${Path}/resources/css/noscript.css" />
	<link rel="stylesheet" href="${Path}/resources/css/index.css">
</noscript>
</head>
<body class="is-article-visible">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<article id="board" class="active">
						<table>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>등록일</th>
								<th>조회수</th>
							</tr>
							<c:forEach var="list" items="${list}">
							<tr>
								<td>${list.id}</td>
								<td><a href="detail?id=${list.id}">${list.title}</a></td>
								<td>${list.writer}</td>
								<td><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd hh:mm"/></td>
								<td>${list.hit}</td>
							</tr>
							</c:forEach>
						</table>

			<div class="close"></div>
			</article>
		</div>
	</div>
	<!-- BG -->
	<div id="bg"
		style="background-image:url('${Path}/resources/images/shoes/${shoesList[0].product_num}-main.jpg')"></div>

	<!-- Scripts -->
	<script src="${Path}/resources/js/jquery.min.js"></script>
	<script src="${Path}/resources/js/browser.min.js"></script>
	<script src="${Path}/resources/js/breakpoints.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		$(".close").on('click', function(e) {
			location.href="../index";
		})
	</script>
</body>
</html>