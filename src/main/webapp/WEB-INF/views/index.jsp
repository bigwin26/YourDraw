<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="Path" value="${pageContext.request.contextPath}" />
<c:set var="now" value="<%=new java.util.Date()%>" />
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
<link rel="stylesheet" href="${Path}/resources/css/index.css">
</head>
<body>
	<%-- 	<div class="loading">
		<p style="text-align: center">
			<img style="padding-top: 25%"
				src="${Path}/resources/images/etc/loading.gif" />
		</p>
	</div> --%>
	<header class="site-navbar py-4 js-sticky-header site-navbar-target"
		role="banner" style="width: 100%;">

		<div class="container-fluid">
			<div class="d-flex align-items-center">
				<div class="site-logo mr-auto w-25" style="width: 33%">
					<a href="#">Your Draw</a>
				</div>

				<div class="mx-auto text-center" style="width: 33%">
					<nav class="site-navigation position-relative text-right"
						role="navigation">
						<ul
							class="site-menu main-menu js-clone-nav mx-auto d-none d-lg-block  m-0 p-0">
							<li><a href="#" class="nav-link active">Home</a></li>
							<li><a href="#" class="nav-link">NextDraw</a></li>
							<li><a href="#" class="nav-link">PastDraw</a></li>
							<li><a href="#" class="nav-link">Instagram</a></li>
						</ul>
					</nav>
				</div>

				<div class="ml-auto w-25" style="width: 33%">
					<nav id="join-nav"
						class="site-navigation position-relative text-right"
						role="navigation">
						<ul
							class="site-menu main-menu site-menu-dark js-clone-nav mr-auto d-none d-lg-block m-0 p-0">
							<li class="cta"><a href="#" class="nav-link"><span>Join
										Us</span></a></li>
						</ul>
					</nav>
					<a href="#"
						class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right"><span
						class="icon-menu h3"></span></a>
				</div>
			</div>
		</div>
	</header>
	<section>
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<c:forEach var="shoesList" items="${shoesList}" end="2"
					varStatus="status">
					<div class="swiper-slide" <c:if test="${'Y' eq shoesList.launched}">style="display:none"</c:if>>
						<!-- 발매남은시간 -->
						<div class="s-launches__hero__info">
							<!---->
							<span id="launches-status">Up next</span>
							<!---->
							<h1>${shoesList.name}</h1>
							<!---->
							<div class="s-launches__hero__info__countdown"
								style="display: none;">
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
						<!-- 발매남은시간 -->
						<img style="width: inherit; height: inherit;"
							src="/image/hero-landscape1.png"> <input id="release-date"
							value="${shoesList.release_date}" />
					</div>
				</c:forEach>
			</div>
			<!-- 다음 버튼 (오른쪽에 있는 버튼) -->
			<div class="swiper-button-next"></div>
			<!-- 이전 버튼 -->
			<div class="swiper-button-prev"></div>
			<!-- 네이베이션 버튼 -->
			<div class="swiper-pagination"></div>
		</div>
	</section>
	<main>
	<div class="main-wrapper">
		<div class="grid-wrapper">

			<c:forEach var="shoesList" items="${shoesList}">
				<div class="grid-item">
					<div class="item-product-info-wrapper">
						<a class="product-thumbnail-img"> <img
							<c:if test="${'Y' eq shoesList.launched}">style="opacity:.6"</c:if>
							src="${Path}/resources/images/shoes/<c:out value="${shoesList.product_num}"/>.jpg">
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
	<!--END main-wrapper --> </main>
	<!--메인 스와이퍼 -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>
	<script type="text/javascript">
		new Swiper('.swiper-container', {
			pagination : { // 페이징 설정
				el : '.swiper-pagination',
				clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
			},
			navigation : {
				nextEl : '.swiper-button-next', // 다음 버튼 클래스명
				prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
			},
		});
	</script>
	<!--END 메인 스와이퍼 -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<!-- 카운트다운  -->
	<script type="text/javascript">
		$(function() {
			var main1 = $(".swiper-wrapper").children().eq(0).children()
					.children().eq(2); //메인 반복문갯수
			var main2 = $(".swiper-wrapper").children().eq(1).children()
					.children().eq(2); //메인 반복문갯수
			var main3 = $(".swiper-wrapper").children().eq(2).children()
					.children().eq(2); //메인 반복문갯수
alert(''+main1.attr('id'));
			var day1 = main1.children().eq(0).children().eq(0);
			var hour1 = main1.children().eq(1).children().eq(0);
			var minute1 = main1.children().eq(2).children().eq(0);
			var second1 = main1.children().eq(3).children().eq(0);

			var day2 = main2.children().eq(0).children().eq(0);
			var hour2 = main2.children().eq(1).children().eq(0);
			var minute2 = main2.children().eq(2).children().eq(0);
			var second2 = main2.children().eq(3).children().eq(0);

			var day3 = main3.children().eq(0).children().eq(0);
			var hour3 = main3.children().eq(1).children().eq(0);
			var minute3 = main3.children().eq(2).children().eq(0);
			var second3 = main3.children().eq(3).children().eq(0);

			var date1 = '${shoesList[status.index eq 0].release_date}';
			var date2 = '${shoesList[status.index eq 1].release_date}';
			var date3 = '${shoesList[status.index eq 2].release_date}';

			var end1 = new Date(date1);
			var end2 = new Date(date2);
			var end3 = new Date(date3);

			var _second = 1000;
			var _minute = _second * 60;
			var _hour = _minute * 60;
			var _day = _hour * 24;
			var timer;
			var firstJoin = true;

			function showRemaining() {
				var now = new Date();
				var distance1 = end1 - now;
				var distance2 = end2 - now;
				var distance3 = end3 - now;
				//시간이 다되었을경우 이벤트처리
				if (distance1 < 0) {

					clearInterval(timer);
					$('.s-launches__hero__info__countdown').css("display",
							"none");
					$("#launches-status").html("DRAW CLOSED");

					return;
				}
				var days1 = Math.floor(distance1 / _day);
				var hours1 = Math.floor((distance1 % _day) / _hour);
				var minutes1 = Math.floor((distance1 % _hour) / _minute);
				var seconds1 = Math.floor((distance1 % _minute) / _second);
				day1.html(days1);
				hour1.html(hours1);
				minute1.html(minutes1);
				second1.html(seconds1);

				var days2 = Math.floor(distance2 / _day);
				var hours2 = Math.floor((distance2 % _day) / _hour);
				var minutes2 = Math.floor((distance2 % _hour) / _minute);
				var seconds2 = Math.floor((distance2 % _minute) / _second);
				day2.html(days2);
				hour2.html(hours2);
				minute2.html(minutes2);
				second2.html(seconds2);

				var days3 = Math.floor(distance3 / _day);
				var hours3 = Math.floor((distance3 % _day) / _hour);
				var minutes3 = Math.floor((distance3 % _hour) / _minute);
				var seconds3 = Math.floor((distance3 % _minute) / _second);
				day3.html(days3);
				hour3.html(hours3);
				minute3.html(minutes3);
				second3.html(seconds3);

				if (firstJoin == true) {
					$('.s-launches__hero__info__countdown').css("display", "");
					firstJoin = false;
				}
			}

			timer = setInterval(showRemaining, 1000);
		});
	</script>
	<!--END 카운트다운  -->
</body>
</html>
