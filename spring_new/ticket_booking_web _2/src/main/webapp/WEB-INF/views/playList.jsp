<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<head>
<meta charset="utf-8">
<title>회원가입</title>

<!-- mobile responsive meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- ** Plugins Needed for the Project ** -->
<!-- Bootstrap -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/all.css">

<!-- Main Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">


<!--Favicon-->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.png"
	type="image/x-icon">
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/favicon.png"
	type="image/x-icon">
<!-- style -->

<style>
#posterContainer img {
	width: 250px;
}

.top-right {
	position: absolute;
	top: 10px;
	right: 10px;
}

.top-right a {
	color: aliceblue;
}
</style>
</head>
<body>
	<!-- 소통페이지 -->
	<!-- START preloader-wrapper -->
	<div class="preloader-wrapper">
		<div class="preloader-inner">
			<div class="spinner-border text-red"></div>
		</div>
	</div>
	<!-- END preloader-wrapper -->

	<!-- START main-wrapper -->
	<section class="d-flex">

		<!-- start of sidenav -->
		<aside>
			<div
				class="sidenav position-sticky d-flex flex-column justify-content-between">
				<a class="navbar-brand" href="/app/" class="logo"> <%-- <img src="${pageContext.request.contextPath}/resources/images/logo.png" 
					alt=""> --%> <img src="<c:url value='/resources/images/logo.png'/>"
					alt="">
				</a>
				<!-- end of navbar-brand -->
				<div class="navbar navbar-dark my-4 p-0 font-primary">
					<ul class="navbar-nav w-100">
						<li class="nav-item active"><a
							class="nav-link text-white px-0 pt-0" href="/app/">Home</a>
						</li>
						<li class="nav-item "><a class="nav-link text-white px-0"
							href="store">스토어</a></li>
						<li class="nav-item "><a class="nav-link text-white px-0"
							href="/app/board/list">소통공간</a></li>
						<li class="nav-item  accordion">
							<div id="drop-menu" class="drop-menu collapse">
								<a class="d-block " href="reservation">예매하기</a> <a
									class="d-block " href="playList.html">전체 공연</a> <a
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
		<!-- end of sidenav -->
		<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
		<div class="main-content">

			<header class="mobile-nav pt-4">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-6">
							<a href="home"> <%-- <img
								src="${pageContext.request.contextPath}/resources/images/logo.png"
								alt=""> --%> <img src="<c:url value='/images/logo.png'/>" alt="">
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
			<!-- end of mobile-nav -->
			<div class="container py-4 my-5">
				<div class="row">
					<div class="col-md-9 m-30">
						<div id="posterContainer" class="row"
							data-xmlurl="http://www.kopis.or.kr/openApi/restful/pblprfr?service=b0a82e699a254319bbe6decc02de2489&stdate=20230901&eddate=20230910&cpage=1&rows=5&prfstate=02&signgucode=11&signgucodesub=1111&kidstate=Y">
						</div>
					</div>
				</div>
			</div>


		</div>
	</section>
	<!-- END main-wrapper -->
	<!-- 	---------------------------------------------------------------------------------------------------------------------------------------------- -->
	<!-- All JS Files -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/imageModule.js"
		defer></script>
	<!-- Main Script -->
	<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			fetchAndDisplayPosters().then(
					function(data) {
						var posterContainer = document
								.getElementById('posterContainer');
						data.forEach(function(item) {
							var div1 = document.createElement('div');
							div1.classList.add('col-md-4'); // Bootstrap 그리드 클래스 추가

							var a = document.createElement('a');
							a.href = "#";
							a.onclick = function() {
								openInNamedWindow("playList_Detailed?data="
										+ item.mt20id, "myWindow");
								return false; // 기본 이벤트를 방지합니다.
							};

							var img = document.createElement('img');
							img.src = item.poster;

							a.appendChild(img); // a 태그 안에 img 태그 추가
							div1.appendChild(a); // div 태그 안에 a 태그 추가
							posterContainer.appendChild(div1); // posterContainer에 div 태그 추가
						});
					});
		});

		function openInNamedWindow(url, windowName) {
			var width = 700; // 새 창의 너비
			var height = 650; // 새 창의 높이
			var left = (window.screen.width - width) / 2;
			var top = (window.screen.height - height) / 2;
			window.open(url, windowName, "width=" + width + ",height=" + height
					+ ",left=" + left + ",top=" + top);
		}
	</script>
</body>
