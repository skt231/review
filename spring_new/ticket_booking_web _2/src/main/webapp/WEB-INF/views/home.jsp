<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head profile="http://www.w3.org/2005/10/profile">
<meta charset="utf-8">
<title>Galaxy - Personal Blog Template</title>

<!-- mobile responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- theme meta -->
<meta name="theme-name" content="galaxy" />

<!-- ** Plugins Needed for the Project ** -->
<!-- Bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/all.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<!--Favicon-->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.png"
	type="image/x-icon">
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.png"
	type="image/x-icon">

<style>
.carousel-inner img {
	display: block;
	margin: 0 auto;
	width: 25em;
	height: auto;
}

.top-right {
	position: absolute;
	top: 10px;
	right: 10px;
}

.top-right a {
	color: aliceblue;
}

.btn-info:hover {
	background-color: #17a2b8;
	border-color: #17a2b8;
}
</style>

</head>

<body>
	<!-- 시작: preloader-wrapper -->
	<!-- 	<div class="preloader-wrapper">
		<div class="preloader-inner">
			<div class="spinner-border text-red"></div>
		</div>
	</div> -->
	<!-- 끝: preloader-wrapper -->

	<!-- 시작: main-wrapper -->
	<section class="d-flex">
		<!-- 시작: sidenav -->
		<aside>
			<div
				class="sidenav position-sticky d-flex flex-column justify-content-between">
				<a class="navbar-brand" href="/app/" class="logo"> <img
					src="${pageContext.request.contextPath}/resources/images/logo.png"
					alt="">
				</a>
				<!-- end of navbar-brand -->

				<div class="navbar navbar-dark my-4 p-0 font-primary">
					<ul class="navbar-nav w-100">
						<li class="nav-item active"><a
							class="nav-link text-white px-0 pt-0" href="/app/">Home</a>
						</li>
						<li class="nav-item "><a class="nav-link text-white px-0"
							href="/app/store">스토어</a></li>
						<li class="nav-item "><a class="nav-link text-white px-0"
							href="/app/board">소통공간</a></li>
						<li class="nav-item  accordion">
							<div id="drop-menu" class="drop-menu collapse">
								<a class="d-block " href="/app/reservation">예매하기</a> <a
									class="d-block " href="/app/playList">전체 공연</a> <a
									class="d-block " href="/app/user/listAll">예매현황</a>
							</div> <a class="nav-link text-white" href="#!" role="button"
							data-toggle="collapse" data-target="#drop-menu"
							aria-expanded="false" aria-controls="drop-menu">예매하기</a>
						</li>
						<li class="nav-item "><a class="nav-link text-white px-0"
							href="###">MyPage</a></li>
					</ul>
				</div>
				<!-- end of navbar -->
				<br>
			</div>
		</aside>
		<!-- 끝: sidenav -->
		<div class="top-right">
			<c:choose>
				<c:when test="${empty userses}">
					<span><a href="/app/user/login">로그인</a></span> &nbsp; <span><a
						href="/app/user/linkRegister">등록</a></span>
				</c:when>
				<c:otherwise>
					<span>${userses.username}!</span> &nbsp; <span><a
						href="/app/user/logout">로그아웃</a></span>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="main-content">
			<!-- 시작: mobile-nav -->
			<header class="mobile-nav pt-4">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-6">
							<a href="index.html"> <img
								src="${pageContext.request.contextPath}/resources/images/logo.png"
								alt="">
							</a>
						</div>
						<div class="col-6 text-right">
							<button class="nav-toggle bg-transparent border text-white">
								<span class="fas fa-bars"></span>
							</button>
						</div>
					</div>
				</div>
			</header>
			<div class="nav-toggle-overlay"></div>
			<!-- 끝: mobile-nav -->
			<div class="container pt-4 mt-5">
				<div class="row justify-content-between">
					<div class="col-lg-7">

						<div class="card post-item bg-transparent border-0 mb-5">
							<div id="posterContainer"
								data-xmlurl="http://www.kopis.or.kr/openApi/restful/pblprfr?service=b0a82e699a254319bbe6decc02de2489&stdate=20230901&eddate=20230910&cpage=1&rows=5&prfstate=02&signgucode=11&signgucodesub=1111&kidstate=Y">
							</div>

							<div id="carouselExampleControls" class="carousel slide"
								data-ride="carousel">
								<div class="carousel-inner">
									<!-- JavaScript가 여기에 이미지 슬라이드 항목들을 동적으로 추가할 것입니다 -->
								</div>
								<a class="carousel-control-prev" href="#carouselExampleControls"
									role="button" data-slide="prev"> <span
									class="carousel-control-prev-icon" aria-hidden="true"></span> <span
									class="sr-only">Previous</span>
								</a> <a class="carousel-control-next"
									href="#carouselExampleControls" role="button" data-slide="next">
									<span class="carousel-control-next-icon" aria-hidden="true"></span>
									<span class="sr-only">Next</span>
								</a>
							</div>
							</br>
							<div class="card-body px-0">
								<a href="playList" class="btn btn-info">더보기</a>
							</div>
						</div>

						<!-- end of post-item -->

						<%-- 	<div class="card post-item bg-transparent border-0 mb-5">
							<a href="post-details.html"> <img
								class="card-img-top rounded-0"
								src="${pageContext.request.contextPath}/resources/images/post/post-lg/03.png"
								alt="">
							</a>
							<div class="card-body px-0">
								<h2 class="card-title">
									<a class="text-white opacity-75-onHover"
										href="post-details.html">Aliquip excepteur cilludm irure
										laboris sint ea qui ex amet id. Ex nulla etno</a>
								</h2>
								<ul class="post-meta mt-3">
									<li class="d-inline-block mr-3"><span
										class="fas fa-clock text-primary"></span> <a class="ml-1"
										href="#">24 April, 2016</a></li>
									<li class="d-inline-block"><span
										class="fas fa-list-alt text-primary"></span> <a class="ml-1"
										href="#">Photography</a></li>
								</ul>
								<p class="card-text my-4">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Tincidunt leo mi, viverra urna.
									Arcu velit risus, condimentum ut vulputate cursus porttitor
									turpis in. Diam egestas nec massa, habitasse. Tincidt dui.</p>
								<a href="post-details.html" class="btn btn-info">Read More <img
									src="${pageContext.request.contextPath}/resources/images/arrow-right.png"
									alt=""></a>
							</div>
						</div> --%>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 끝: main-wrapper -->

	<!-- 모든 JS 파일 -->
	<script
		src="${pageContext.request.contextPath}/resources/plugins/jQuery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap.min.js"></script>
	<!-- 메인 스크립트 -->
	<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/imageModule.js"></script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			fetchAndDisplayPosters().then(function(data) {
				console.log(data);
				var carouselInner = document.querySelector('.carousel-inner');

				data.forEach(function(item, index) {
					var carouselItem = document.createElement('div');
					carouselItem.className = 'carousel-item';
					if (index === 0)
						carouselItem.className += ' active';

					var img = document.createElement('img');
					img.className = 'card-img-top rounded-0';
					img.src = item.poster;
					img.alt = "Image " + (index + 1);

					carouselItem.appendChild(img);
					carouselInner.appendChild(carouselItem);
				});
			});
		});
		
	</script>
</body>
</html>