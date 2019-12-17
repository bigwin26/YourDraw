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
						<table border="1">
					        <tr>
					            <td>글제목</td><td>${detail[0].title}</td>
					        </tr>
					        <tr>
					            <td>글내용</td><td>${detail[0].content}</td>
					        </tr>
					        <tr><td>글쓴이</td><td>${detail[0].writer}</td></tr>
					   		<tr>
					            <td>작성일자</td>
					            <td><fmt:formatDate value="${detail[0].regDate}" pattern="yyyy-MM-dd hh:mm"/></td>
					        </tr>
					        <tr><td>조회수</td><td>${detail[0].hit}</td></tr>	        
					    </table>
					    <a href="#">수정</a>
					    <a href="#">삭제</a>
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
			location.href="list";
		})
	</script>
</body>
</html>