<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
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
.head {
	text-align: center;
	font-size: 36px;
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
				<a class="navbar-brand" href="/app/" class="logo"> <img
					src="${pageContext.request.contextPath}/resources/images/logo.png"
					alt="">
				</a>
				<!-- end of navbar-brand -->

				<div class="navbar navbar-dark my-4 p-0 font-primary">
					<ul class="navbar-nav w-100">
						<li class="nav-item active"><a
							class="nav-link text-white px-0 pt-0" href="/app/">Home</a></li>
						<li class="nav-item "><a class="nav-link text-white px-0"
							href="/app/introduction">소개</a></li>
						<li class="nav-item "><a class="nav-link text-white px-0"
							href="/app/board">소통공간</a></li>
						<li class="nav-item  accordion">
							<div id="drop-menu" class="drop-menu collapse">
								<a class="d-block " href="/app/reservation/rsv">예매하기</a> <a
									class="d-block " href="/app/playList">전체 공연</a> <a
									class="d-block "
									href="/app/reservation/readId?userid=${userses.id}">예매현황</a>
							</div> <a class="nav-link text-white" href="#!" role="button"
							data-toggle="collapse" data-target="#drop-menu"
							aria-expanded="false" aria-controls="drop-menu">예매하기</a>
						</li>
						<li class="nav-item "><a class="nav-link text-white px-0"
							href="/app/user/userDetailed?id=${userses.id}">MyPage</a></li>
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
							<a href="/app/"> <img
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
			<div class="container py-4 my-5">

				<form class="viewForm" method="post">

					<input type='hidden' name='board_id' value="${board.board_id}">
					<input type='hidden' name='page' value="${pageDto.page}"> <input
						type='hidden' name='perPageNum' value="${pageDto.perPageNum}">
					<input type='hidden' name='searchType'
						value="${pageDto.searchType}"> <input type='hidden'
						name='keyword' value="${pageDto.keyword}">

					<h6>
						분류<input type="text" name="bulletin" style="width: 100%"
							value="${board.bulletin}" readonly="readonly">
					</h6>
					<h6>
						작성자 <input type="text" name="username" style="width: 100%"
							value="${board.username}" readonly="readonly">
					</h6>
					<h6>제목</h6>
					<h6>
						<input type="text" style="width: 100%" name='title'
							value="${board.title}" readonly="readonly">
					</h6>
					<h6>
						수정일자
						<fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${board.update_date}" />
					</h6>

					<h6>
						내용
						<textarea style="width: 100%" name="content" rows="3"
							readonly="readonly">${board.content}</textarea>
					</h6>
				</form>

				<div class="d-grid">
					<button type="button" class="btnModify"
						onclick="location.href='/app/board/edit?board_id=${board.board_id }&title=${board.title}&content=${board.content}&username=${board.username}'">수정</button>
					<button type="submit" class="btnRemove"
						onclick="location.href='/app/board/delete?board_id=${board.board_id }'">삭제</button>
					<button type="button" class="btnReply"
						onclick="location.href='/app/board/comment?bulletin='+ encodeURIComponent('${board.bulletin}')+'&user_id=1&board_id=${board.board_id}&title=${board.title}&indent=${board.indent }&depthno=${board.depthno }'">답글</button>
					<button type="button" class="btnList"
						onclick="location.href='/app/board/list'">LIST page로 이동</button>


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
		
	</script>
</body>
</html>
