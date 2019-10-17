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
			<article id="insert" class="active">
				<form action="">
					<table>
						<thead>
							<tr>NAME</tr>
							<tr>PRODUCT_NUM</tr>
							<tr>PRICE</tr>
							<tr>COMPANY</tr>
							<tr>SEX</tr>
							<tr>COLOR</tr>
							<tr>METHOD</tr>
							<tr>RELEASE_DATE</tr>
							<tr>RELEASE_URL</tr>
							<tr>RELEASE_SITE</tr>
						</thead>
						<tbody>
							<tr>hello</tr>
						</tbody>
					</table>
				</form>
			</article>
		</div>
	</div>
	<div id="bg"></div>
	<!-- Scripts -->
	<script src="${Path}/resources/js/jquery.min.js"></script>
	<script src="${Path}/resources/js/browser.min.js"></script>
	<script src="${Path}/resources/js/breakpoints.min.js"></script>
	<script src="${Path}/resources/js/util.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</body>
</html>
