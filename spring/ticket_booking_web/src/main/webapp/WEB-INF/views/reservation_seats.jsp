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
.stage {
	background-color: rgb(0, 0, 0);
	color: white;
	text-align: center;
	padding: 20px;
}

.seat-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-evenly;
	/* 수평으로 고르게 배치 */
	align-content: space-around;
	/* 수직으로 고르게 배치 */
	gap: 5px;
	/* 가로와 세로 간격 설정 */
	height: 50vh;
	/* 화면 높이에 맞춤 */
}

.seat {
	width: calc(10% - 20px);
	/* 화면 너비에 따라 동적으로 조절됨 */
	height: 40px;
	background-color: rgb(255, 255, 255);
	margin: 5px;
	display: inline-block;
	cursor: pointer;
}

.selected {
	background-color: red;
}

.payment-container {
	text-align: center;
	margin-top: 20px;
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
						class="nav-link text-white px-0 pt-0" href="/app/home">Home</a></li>
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
		<div class="container py-4 my-5">

			<div class="col-md-12 m-30">
				<div class="stage">
					<h1>무대</h1>
				</div>
				<div class="seat-container" id="seatContainer">
					<!-- 좌석은 JavaScript로 동적으로 생성됩니다. -->
				</div>
				<div class="payment-container">
					<h2>
						총 결제액: <span id="totalAmount">0</span>원
					</h2>
					<button id="resetButton">초기화</button>
					<button id="paymentButton">결제</button>
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
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
function fetchXML(url) {
    return new Promise(function(resolve, reject) {
        fetch(url)
            .then(function(response) {
                if (!response.ok) throw new Error("Network response was not ok");
                return response.text();
            })
            .then(function(text) {
                var parser = new DOMParser();
                resolve(parser.parseFromString(text, "text/xml"));
            })
            .catch(reject);
    });
}

function getPcseguidanceValue(mt20id) {
    return fetchXML("http://www.kopis.or.kr/openApi/restful/pblprfr/" + mt20id + "?service=b0a82e699a254319bbe6decc02de2489")
        .then(function(xmlDoc) {
            var pcseguidanceElement = xmlDoc.querySelector('pcseguidance');
            if (pcseguidanceElement) {
                return Number(pcseguidanceElement.textContent.replace(/[^0-9]/g, ''));
            }
            return 0;
        });
}

var seatContainer = document.getElementById('seatContainer');
var totalAmountElement = document.getElementById('totalAmount');
var resetButton = document.getElementById('resetButton');
var paymentButton = document.getElementById('paymentButton');

var seats = [];
var totalAmount = 0;

var totalRows = 5;
var seatsPerRow = 10;
var totalSeats = totalRows * seatsPerRow;

var seatPrice = 0;  // 기본 좌석 가격 설정

window.addEventListener('load', function() {
    var mt20id = new URL(window.location.href).searchParams.get("mt20id");
    if (mt20id) {
        getPcseguidanceValue(mt20id)
            .then(function(price) {
                seatPrice = price;
                console.log(seatPrice);
            });
    }
});

for (var i = 1; i <= totalSeats; i++) {
    (function(i) {
        var seat = document.createElement('div');
        seat.className = 'seat';
        seat.id = 's-' + i;
        seat.textContent = i;

        seat.addEventListener('click', function() {
            if (seats.indexOf(i) === -1) {
                seats.push(i);
                seat.classList.add('selected');
                totalAmount += seatPrice;
            } else {
                var index = seats.indexOf(i);
                if (index > -1) {
                    seats.splice(index, 1);
                    seat.classList.remove('selected');
                    totalAmount -= seatPrice;
                }
            }
            totalAmountElement.textContent = totalAmount;
        });
        seatContainer.appendChild(seat);
    })(i);
}

paymentButton.addEventListener('click', function() {
    alert('결제가 완료되었습니다. 총 결제액: ' + totalAmount + '원');
    resetSeats();
});

resetButton.addEventListener('click', function() {
    resetSeats();
});

function resetSeats() {
    seats.length = 0;
    totalAmount = 0;
    var allSeats = document.querySelectorAll('.seat');
    Array.prototype.forEach.call(allSeats, function(seat) {
        seat.classList.remove('selected');
    });
    totalAmountElement.textContent = totalAmount;
}

</script>

</body>
