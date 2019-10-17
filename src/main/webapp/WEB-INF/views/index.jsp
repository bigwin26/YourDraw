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
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<div class="logo">
				<h1>Your Draw</h1>
			</div>
			<div class="content">
				<div class="inner">
					<div class="s-launches__hero__info">
						<!---->
						<span id="launches-status">Up Next</span>
						<!---->
						<h1>${shoesList[0].name}</h1>
						<!---->
						<div class="s-launches__hero__info__countdown"
							style="display: none">
							<div>
								<span id="days">0</span><span>Days</span>
							</div>
							<div>
								<span id="hours">0</span><span>Hours</span>
							</div>
							<div>
								<span id="minutes">0</span><span>Minutes</span>
							</div>
							<div>
								<span id="seconds">0</span><span>Seconds</span>
							</div>
						</div>
					</div>
					<input id="release-date" value="${shoesList[0].release_date}"
						style="display: none" />
				</div>
			</div>
			<nav>
				<ul>
					<li><a href="#detail">Detail</a></li>
					<li><a href="#nextDraw">Next Draw</a></li>
					<li><a href="#pastDraw">Past Draw</a></li>
					<li class="ready"><a href="#board">Board</a></li>
					<!--<li><a href="#elements">Elements</a></li>-->
				</ul>
			</nav>
		</header>

		<!-- Main -->
		<div id="main">
			<!-- detail -->
			<%@ include file="detail.jsp"%> 
			<!-- nextDraw -->
			<%@ include file="nextDraw.jsp"%> 
			<!-- pastDraw -->
			<%@ include file="pastDraw.jsp"%> 
			<!-- Board -->
			<%@ include file="board.jsp"%> 
		</div>

		<!-- Footer -->
		<footer id="footer">
			<p class="copyright">&copy; Your Draw by KDS</p>
		</footer>

	</div>

	<!-- BG -->
	<div id="bg"
		style="background-image:url('${Path}/resources/images/shoes/${shoesList[0].product_num}-main.jpg')"></div>

	<!-- Scripts -->
	<script src="${Path}/resources/js/jquery.min.js"></script>
	<script src="${Path}/resources/js/browser.min.js"></script>
	<script src="${Path}/resources/js/breakpoints.min.js"></script>
	<script src="${Path}/resources/js/util.js"></script>
	<script src="${Path}/resources/js/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<!-- 카운트다운  -->
	<script type="text/javascript">
		//카운트다운
		$(function() {
			var endDate = $('#release-date').val();
			var end = new Date(endDate);

			var _second = 1000;
			var _minute = _second * 60;
			var _hour = _minute * 60;
			var _day = _hour * 24;
			var timer;
			var firstJoin = true;

			function showRemaining() {
				var now = new Date();
				var distance = end - now;
				if (distance < 0) {

					clearInterval(timer);
					$('.s-launches__hero__info__countdown').css("display",
							"none");
					$("#launches-status").html("DRAW CLOSED");

					return;
				}
				var days = Math.floor(distance / _day);
				var hours = Math.floor((distance % _day) / _hour);
				var minutes = Math.floor((distance % _hour) / _minute);
				var seconds = Math.floor((distance % _minute) / _second);
				$('#days').html(days);
				$('#hours').html(hours);
				$('#minutes').html(minutes);
				$('#seconds').html(seconds);

				if (firstJoin == true) {
					$('.s-launches__hero__info__countdown').css("display", "");
					firstJoin = false;
				}
			}

			timer = setInterval(showRemaining, 1000);
		})

		//보수중 이벤트
		$(".ready").on('click', function(e) {
			alert("준비중 입니다.");
			e.preventDefault();
		})
	</script>
</body>
</html>
