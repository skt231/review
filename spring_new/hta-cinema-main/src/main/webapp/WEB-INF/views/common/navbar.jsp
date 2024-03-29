<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="tags.jsp" %>

<div id="header">
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-top p-0" id="navbar-top">
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a href="#" class="nav-link">VIP LOUNGE</a></li>
					<li class="nav-item"><a href="#" class="nav-link">멤버십</a></li>
					<li class="nav-item"><a href="/supports" class="nav-link">고객센터</a></li>
				</ul>
				<ul class="navbar-nav">
					<c:if test="${empty LOGIN_USER }">
						<li class="nav-item"><a href="modal-login-form" class="nav-link" data-bs-toggle="modal" data-bs-target="#modal-login-form">로그인</a></li>
						<li class="nav-item"><a href="/customer/signUp" class="nav-link">회원가입</a></li>
					</c:if>
					<c:if test="${not empty LOGIN_USER }">
						<li class="nav-item"><a href="/logout" class="nav-link">로그아웃</a></li>
					</c:if>
					<li class="nav-item"><a href="#" class="nav-link">빠른예매</a></li>
				</ul>
			</div>
		</nav>
	
		<nav class="navbar navbar-expand-lg navbar-light" id="navbar-2">
			<div class="collapse navbar-collapse justify-content-start">
				<ul class="navbar-nav util-list">
					<li class="nav-item">
					<a class="nav-link" href="#"><img src="/resources/images/nav/ico-sitemap.png"></a>
					</li>
	
					<li class="nav-item dropdown"><a class="nav-link" href="#"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						aria-expanded="false"> <img
							src="/resources/images/nav/ico-search.png">
					</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="">
							<div class="search-box p-3">
								<form action="">
		     		 				<input class="form-control" type="search" name="keyword" value="" placeholder="영화를 검색하세요!" aria-label="Search">
		      						<button class="btn btn-sm" type="button"><img src="/resources/images/nav/ico-search.png"></button>
		    					</form>
							</div>
						</ul>
					</li>
				</ul>
			</div>
			<div class="collapse navbar-collapse justify-content-center" id="navbarNav">
				<ul class="navbar-nav ">
					<li class="nav-item"><a class="nav-link" href="/movie/list">영화</a></li>
					<li class="nav-item"><a class="nav-link" href="/ticketing/screenList">예매</a></li>
					<li class="nav-item"><a class="nav-link" href="/theater/list">극장</a></li>
					<li class="nav-item"><a class="nav-link" href="/" style="font-family: 'Alfa Slab One'; font-weight: 400;">HTA CINEMA</a></li>
					<li class="nav-item"><a class="nav-link" href="#">이벤트</a></li>
					<li class="nav-item"><a class="nav-link" href="#">스토어</a></li>
					<li class="nav-item"><a class="nav-link" href="#">혜택</a></li>
				</ul>
			</div>
			<div class="collapse navbar-collapse justify-content-end">
				<ul class="navbar-nav util-list">
					<li class="nav-item"><a class="nav-link" href="#"><img src="/resources/images/nav/ico-schedule.png"></a></li>
					<li class="nav-item"><a class="nav-link" href="#"><img src="/resources/images/nav/ico-mymega.png"></a></li>
				</ul>
			</div>
		</nav>
	</div>
</div>
<!-- 로그인 모달 -->
<c:if test="${empty LOGIN_USER }">
	<%@include file="loginFormModal.jsp"%>
</c:if>