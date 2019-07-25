<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="Path" value="${pageContext.request.contextPath}" />
<c:set var="now" value="<%=new java.util.Date()%>" />
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!--
	Dimension by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>YourDraw</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${Path}/resources/assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="${Path}/resources/assets/css/noscript.css" />
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
					<li><a href="#about">Past Draw</a></li>
					<li><a href="#contact">Exchange Rate</a></li>
					<!--<li><a href="#elements">Elements</a></li>-->
				</ul>
			</nav>
		</header>

		<!-- Main -->
		<div id="main">

			<!-- detail -->
			<article id="detail">
				<h2 class="major">${shoesList[0].name}</h2>
				<span class="image main"><img
					src="${Path}/resources/images/shoes/${shoesList[0].product_num}.jpg"
					alt="" /></span>
				<p>
					Aggressively styled and set upon an iconic Nike sole, these
					all-black Shox TLs are a slick, street-ready sneaker with attitude
					in spades. Superfine nylon mesh forms the uppers, overlaid with
					glossy black piping and a luxe leather Swoosh. Flashes of scarlet
					streak the tongue and heel for a sharp hit of mouthwatering colour
					on the otherwise jet palette. The real showstopper here, though, is
					that pillared sole: debuted in the ‘80s, it’s back with a vengeance
					and ready for anything.
				</p>
			</article>

			<!-- nextDraw -->
			<article id="nextDraw">
				<h2 class="major">Next Draw</h2>
				<div class="main-wrapper">
		<div class="grid-wrapper">
			<c:forEach var="shoesList" items="${shoesList}">
				<div class="grid-item">
					<div class="item-product-info-wrapper">
						<a class="product-thumbnail-img"> <img
							<c:if test="${'Y' eq shoesList.launched}">style="opacity:.6"</c:if>
							src="/image/<c:out value="${shoesList.product_num}"/>.jpg">
						</a>
						<div class="product-info">
							<h2 class="thumbnail__product__name">
								<c:out value="${shoesList.name}" />
							</h2>
							<span class="thumbnail__product__color"><c:out
									value="${shoesList.color}" /></span> <span
								<c:if test="${'Y' eq shoesList.launched}">style="display:none"</c:if>
								class="thumbnail__product__price"> <c:out
									value="${shoesList.price}$" /></span>
						</div>
					</div>
					<div class="product-draw-info-wrapper">
						<div class="product-draw-info">
							<div class="product-date">
								<span class="product-date-label">Launch Date</span>
								<div class="product-release-date">
									<c:choose>
										<c:when test="${'N' eq shoesList.launched}">
											<span>${shoesList.release_date}</span>
										</c:when>
										<c:when test="${'Y' eq shoesList.launched}">
											<span>LAUNCHED on ${shoesList.release_date}</span>
										</c:when>
									</c:choose>
								</div>
								<span class="product-code-label"></span>
								<div class="product-code">
									<span><c:out value="${shoesList.product_num}" /></span>
								</div>
							</div>
						</div>
					</div>
					<a
						<c:if test="${'Y' eq shoesList.launched}">style="display:none"</c:if>
						class="enter-draw-button">Enter Draw</a>
				</div>
			</c:forEach>

		</div>
		<!--END grid-wrapper -->
	</div>
			</article>

			<!-- pastDraw -->
			<article id="pastDraw">
				<h2 class="major">Past Draw</h2>
				<div class="main-wrapper">
		<div class="grid-wrapper">
			<c:forEach var="shoesList" items="${shoesList}">
				<div class="grid-item">
					<div class="item-product-info-wrapper">
						<a class="product-thumbnail-img"> <img
							<c:if test="${'Y' eq shoesList.launched}">style="opacity:.6"</c:if>
							src="/image/<c:out value="${shoesList.product_num}"/>.jpg">
						</a>
						<div class="product-info">
							<h2 class="thumbnail__product__name">
								<c:out value="${shoesList.name}" />
							</h2>
							<span class="thumbnail__product__color"><c:out
									value="${shoesList.color}" /></span> <span
								<c:if test="${'Y' eq shoesList.launched}">style="display:none"</c:if>
								class="thumbnail__product__price"> <c:out
									value="${shoesList.price}$" /></span>
						</div>
					</div>
					<div class="product-draw-info-wrapper">
						<div class="product-draw-info">
							<div class="product-date">
								<span class="product-date-label">Launch Date</span>
								<div class="product-release-date">
									<c:choose>
										<c:when test="${'N' eq shoesList.launched}">
											<span>${shoesList.release_date}</span>
										</c:when>
										<c:when test="${'Y' eq shoesList.launched}">
											<span>LAUNCHED on ${shoesList.release_date}</span>
										</c:when>
									</c:choose>
								</div>
								<span class="product-code-label"></span>
								<div class="product-code">
									<span><c:out value="${shoesList.product_num}" /></span>
								</div>
							</div>
						</div>
					</div>
					<a
						<c:if test="${'Y' eq shoesList.launched}">style="display:none"</c:if>
						class="enter-draw-button">Enter Draw</a>
				</div>
			</c:forEach>

		</div>
		<!--END grid-wrapper -->
	</div>
			</article>

			<!-- Board -->
			<article id="board">
				<h2 class="major">Board</h2>
				<form method="post" action="#">
					<div class="fields">
						<div class="field half">
							<label for="name">Name</label> <input type="text" name="name"
								id="name" />
						</div>
						<div class="field half">
							<label for="email">Email</label> <input type="text" name="email"
								id="email" />
						</div>
						<div class="field">
							<label for="message">Message</label>
							<textarea name="message" id="message" rows="4"></textarea>
						</div>
					</div>
					<ul class="actions">
						<li><input type="submit" value="Send Message" class="primary" /></li>
						<li><input type="reset" value="Reset" /></li>
					</ul>
				</form>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github"><span
							class="label">GitHub</span></a></li>
				</ul>
			</article>
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
	<script src="${Path}/resources/assets/js/jquery.min.js"></script>
	<script src="${Path}/resources/assets/js/browser.min.js"></script>
	<script src="${Path}/resources/assets/js/breakpoints.min.js"></script>
	<script src="${Path}/resources/assets/js/util.js"></script>
	<script src="${Path}/resources/assets/js/main.js"></script>
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
		$("nav a").on('click', function(e) {
			alert("준비중 입니다.");
			e.preventDefault();
		})
	</script>
</body>
</html>
