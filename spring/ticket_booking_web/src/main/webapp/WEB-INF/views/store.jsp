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
				<a class="navbar-brand" href="home" class="logo"> <%-- <img src="${pageContext.request.contextPath}/resources/images/logo.png" 
					alt=""> --%> <img src="<c:url value='/resources/images/logo.png'/>"
					alt="">
				</a>
				<!-- end of navbar-brand -->

				<div class="navbar navbar-dark my-4 p-0 font-primary">
					<ul class="navbar-nav w-100">
						<li class="nav-item active"><a
							class="nav-link text-white px-0 pt-0" href="home">Home</a></li>
						<li class="nav-item "><a class="nav-link text-white px-0"
							href="store.html">스토어</a></li>
						<li class="nav-item "><a class="nav-link text-white px-0"
							href="###">소통공간</a></li>
						<li class="nav-item  accordion">
							<div id="drop-menu" class="drop-menu collapse">
								<a class="d-block " href="###">예매하기</a> <a class="d-block "
									href="###">전체 공연</a> <a class="d-block " href="###">예매현황</a>
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
			<span><a href="login.html">login</a></span> &nbsp; <span><a
				href="resisterUser.html">resister</a></span>
		</div>
		<!-- end of sidenav -->
		<!-- -------------------------------------------------------------------------------------------------------------------------------------- -->
		<div class="main-content">
			<!-- start of mobile-nav -->
			<header class="mobile-nav pt-4">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-6">
							<a href="index.html"> <img src="images/logo.png" alt="">
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
			<section class="py-5">
				<div class="container px-4 px-lg-5 mt-5">
					<div
						class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
						<div class="col mb-5">
							<div class="card h-100">
								<!-- Product image-->
								<img class="card-img-top"
									src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
									alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">Fancy Product</h5>
										<!-- Product price-->
										$40.00 - $80.00
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<a class="btn btn-outline-dark mt-auto" href="#">View
											options</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col mb-5">
							<div class="card h-100">
								<!-- Sale badge-->
								<div class="badge bg-dark text-white position-absolute"
									style="top: 0.5rem; right: 0.5rem">Sale</div>
								<!-- Product image-->
								<img class="card-img-top"
									src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
									alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">Special Item</h5>
										<!-- Product reviews-->
										<div
											class="d-flex justify-content-center small text-warning mb-2">
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
										</div>
										<!-- Product price-->
										<span class="text-muted text-decoration-line-through">$20.00</span>
										$18.00
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<a class="btn btn-outline-dark mt-auto" href="#">Add to
											cart</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col mb-5">
							<div class="card h-100">
								<!-- Sale badge-->
								<div class="badge bg-dark text-white position-absolute"
									style="top: 0.5rem; right: 0.5rem">Sale</div>
								<!-- Product image-->
								<img class="card-img-top"
									src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
									alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">Sale Item</h5>
										<!-- Product price-->
										<span class="text-muted text-decoration-line-through">$50.00</span>
										$25.00
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<a class="btn btn-outline-dark mt-auto" href="#">Add to
											cart</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col mb-5">
							<div class="card h-100">
								<!-- Product image-->
								<img class="card-img-top"
									src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
									alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">Popular Item</h5>
										<!-- Product reviews-->
										<div
											class="d-flex justify-content-center small text-warning mb-2">
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
										</div>
										<!-- Product price-->
										$40.00
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<a class="btn btn-outline-dark mt-auto" href="#">Add to
											cart</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col mb-5">
							<div class="card h-100">
								<!-- Sale badge-->
								<div class="badge bg-dark text-white position-absolute"
									style="top: 0.5rem; right: 0.5rem">Sale</div>
								<!-- Product image-->
								<img class="card-img-top"
									src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
									alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">Sale Item</h5>
										<!-- Product price-->
										<span class="text-muted text-decoration-line-through">$50.00</span>
										$25.00
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<a class="btn btn-outline-dark mt-auto" href="#">Add to
											cart</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col mb-5">
							<div class="card h-100">
								<!-- Product image-->
								<img class="card-img-top"
									src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
									alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">Fancy Product</h5>
										<!-- Product price-->
										$120.00 - $280.00
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<a class="btn btn-outline-dark mt-auto" href="#">View
											options</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col mb-5">
							<div class="card h-100">
								<!-- Sale badge-->
								<div class="badge bg-dark text-white position-absolute"
									style="top: 0.5rem; right: 0.5rem">Sale</div>
								<!-- Product image-->
								<img class="card-img-top"
									src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
									alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">Special Item</h5>
										<!-- Product reviews-->
										<div
											class="d-flex justify-content-center small text-warning mb-2">
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
										</div>
										<!-- Product price-->
										<span class="text-muted text-decoration-line-through">$20.00</span>
										$18.00
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<a class="btn btn-outline-dark mt-auto" href="#">Add to
											cart</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col mb-5">
							<div class="card h-100">
								<!-- Product image-->
								<img class="card-img-top"
									src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
									alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">Popular Item</h5>
										<!-- Product reviews-->
										<div
											class="d-flex justify-content-center small text-warning mb-2">
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
										</div>
										<!-- Product price-->
										$40.00
									</div>
								</div>
								<!-- Product actions-->
								<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
									<div class="text-center">
										<a class="btn btn-outline-dark mt-auto" href="#">Add to
											cart</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>


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
