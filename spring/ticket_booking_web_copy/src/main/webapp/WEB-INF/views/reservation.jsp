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
body {
	margin: 0;
	font-family: Arial, sans-serif;
	padding: 20px;
}

.top-right {
	position: absolute;
	top: 10px;
	right: 10px;
}

.quick-reserve {
	border: 1px solid #ddd;
	padding: 20px;
	width: 100%;
	display: flex;
	position: relative;
}

.option-box {
	flex: 1;
	padding: 10px;
	border-right: 1px solid #ddd;
}

.option-box:last-child {
	border-right: none;
}

.option-label {
	font-weight: bold;
	display: block;
	margin-bottom: 10px;
}

ul {
	list-style: none;
	padding-left: 0;
	margin: 0;
}

#movie {
	width: 100%;
	white-space: nowrap;
}

#movie li {
	margin-bottom: 10px;
	padding: 5px;
	border: 1px solid #ddd;
}

#movie li a {
	font-size: 5px;
}

.option-box ul:not (#movie ) {
	display: flex;
}

.option-box ul:not (#movie ) li {
	margin-right: 10px;
	padding: 5px;
	border: 1px solid #ddd;
}

.calendar {
	text-align: center;
	margin-bottom: 20px;
	/* 간격을 늘리기 위한 마진 추가 */
}

button {
	padding: 8px 12px;
	background-color: #007BFF;
	color: white;
	border: none;
	cursor: pointer;
	transition: background-color 0.3s;
	position: absolute;
	bottom: 10px;
	right: 10px;
	font-size: 0.8rem;
}

button:hover {
	background-color: #0056b3;
}

#titleContainer div a, #time li a {
	font-size: 15px;
	text-decoration: none;
}

/* 마우스 오버 시 */
#titleContainer div a:hover {
	background-color: #e0e0e0;
	/* 라이트 그레이 */
	color: black;
	text-decoration: none;
}

/* 클릭 시 */
#titleContainer div a:active {
	background-color: #b0b0b0;
	/* 미디엄 그레이 */
	color: white;
}

/* 선택된 경우 */
#titleContainer div a.selected {
	background-color: #004F4D;
	/* 파란색 */
	color: #ffd6cd;
}

#time li a:hover {
	background-color: #e0e0e0;
	/* 라이트 그레이 */
	color: black;
	text-decoration: none;
}

#time li a:active {
	background-color: #b0b0b0;
	/* 미디엄 그레이 */
	color: white;
}

#time li a.selected {
	background-color: #004F4D;
	color: #ffd6cd;
}

.form-group {
	margin-bottom: 10px;
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
		<div class="container py-4 my-5">
			<div class="col-md-12 m-30">
				<div class="quick-reserve">

					<div class="option-box">
						<label class="option-label" for="movie">연극:</label>
						<ul id="movie" class="row">
							<div class="col-md-12">
								<li id="titleContainer"
									data-xmlurl="http://www.kopis.or.kr/openApi/restful/pblprfr?service=b0a82e699a254319bbe6decc02de2489&stdate=20230901&eddate=20230910&cpage=1&rows=5&prfstate=02&signgucode=11&signgucodesub=1111&kidstate=Y">
								</li>
							</div>
						</ul>
					</div>


					<div class="option-box">
						<label class="option-label" for="datepicker">날짜:</label>
						<div class="calendar">
							<input type="text" id="datepicker" placeholder="요일 선택">
						</div>
						<label class="option-label" for="location">장소:</label>
						<div id="location">
							<span></span>
						</div>
					</div>

					<div class="option-box">
						<label class="option-label" for="time">시간:</label>
						<ul id="time">

						</ul>
					</div>

					<button type="button" id="next">다음으로</button>
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
let selectableDays = [];
let minSelectableDate = null;
let maxSelectableDate = null;

function extractSchedule(dtguidance) {
    const daysMapping = {
        '월요일': 1,
        '화요일': 2,
        '수요일': 3,
        '목요일': 4,
        '금요일': 5,
        '토요일': 6,
        '일요일': 0,
        'HOL': [6, 0]
    };

    const schedules = dtguidance.split(', ');
    const result = [];
    for (const schedule of schedules) {
        const [dayPart, timePart] = schedule.split('(');
        const times = timePart ? timePart.replace(')', '').split(',').map(time => time.trim()) : [];
        if (dayPart.includes('~')) {
            const [start, end] = dayPart.split('~').map(part => part.trim());
            let currentDay = daysMapping[start];
            const endDay = daysMapping[end];
            while (currentDay !== endDay) {
                result.push({ day: currentDay, times: times });
                currentDay = (currentDay + 1) % 7;
            }
            result.push({ day: endDay, times: times });
        } else {
            result.push({ day: daysMapping[dayPart.trim()], times: times });
        }
    }
    return result;
}

$("#datepicker").datepicker({
    dateFormat: "yy-mm-dd",
    beforeShowDay: function (date) {
        const day = date.getDay();
        return [selectableDays.some(schedule =>
            Array.isArray(schedule.day) ? schedule.day.includes(day) : schedule.day === day
        )];
    },
    onSelect: function (dateText, datePickerInstance) {
        const selectedDate = new Date(dateText);
        const dayOfWeek = selectedDate.getDay();

        const matchedSchedule = selectableDays.find(schedule =>
            Array.isArray(schedule.day) ? schedule.day.includes(dayOfWeek) : schedule.day === dayOfWeek
        );

        if (matchedSchedule) {
            const timeList = document.getElementById('time');
            timeList.innerHTML = "";  // 기존에 있는 시간 목록을 지웁니다.

            matchedSchedule.times.forEach(time => {
                const timeItem = document.createElement('li');

                // 여기서 남은 좌석을 계산합니다. 
                const reservedSeats = Math.floor(Math.random() * 51);
                const remainingSeats = 50 - reservedSeats;

                const timeLink = document.createElement('a');
                timeLink.href = "#";  // 여기에 원하는 링크를 넣으실 수 있습니다.
                timeLink.textContent = `${time} (남은 좌석: ${remainingSeats}/50)`; // 시간과 남은 좌석 수 표시

                timeItem.appendChild(timeLink);
                timeList.appendChild(timeItem);
            });


            document.querySelectorAll("#time li a").forEach(link => {
                link.addEventListener("click", function (event) {
                    event.preventDefault();
                    document.querySelectorAll("#time li a").forEach(innerLink => innerLink.classList.remove('selected'));
                    this.classList.add('selected');

                    const mt20id = document.querySelector("#titleContainer div a.selected").dataset.mt20id;
                    console.log(mt20id);
                });
            });
        }
    }
});

document.getElementById('next').addEventListener('click', function () {
    const selectedMovieLink = document.querySelector("#titleContainer div a.selected");
    if (selectedMovieLink) {
        const mt20id = selectedMovieLink.dataset.mt20id;
        window.location.href = `reservation_seats.html?mt20id=${mt20id}`;
    } else {
        alert("영화를 선택해주세요.");
    }
});

document.addEventListener("DOMContentLoaded", async function () {
    const titleContainer = document.getElementById('titleContainer');
    const url = titleContainer.dataset.xmlurl;
    const xmlData = await fetchXML(url);
    const items = xmlData.querySelectorAll('db');

    items.forEach(item => {
        const div = document.createElement('div');
        div.classList.add('col-md-4');

        const a = document.createElement('a');
        a.href = "#";
        a.textContent = item.querySelector('prfnm').textContent;
        a.dataset.mt20id = item.querySelector('mt20id').textContent;

        div.appendChild(a);
        titleContainer.appendChild(div);
    });

    document.querySelectorAll("#titleContainer div a").forEach(link => {
        link.addEventListener("click", async function (event) {
            event.preventDefault();
            document.querySelectorAll("#titleContainer div a").forEach(innerLink => innerLink.classList.remove('selected'));
            this.classList.add('selected');

            const mt20id = this.dataset.mt20id;
            const detailDataXML = await fetchXML(`http://www.kopis.or.kr/openApi/restful/pblprfr/${mt20id}?service=b0a82e699a254319bbe6decc02de2489`);

            const prloc = detailDataXML.querySelector('fcltynm').textContent;
            document.getElementById('location').innerHTML = prloc;

            const prfpdfromNode = detailDataXML.querySelector('prfpdfrom');
            const prfpdtoNode = detailDataXML.querySelector('prfpdto');
            if (prfpdfromNode && prfpdtoNode) {
                const fromDate = new Date(prfpdfromNode.textContent);
                const toDate = new Date(prfpdtoNode.textContent);
                $("#datepicker").datepicker("option", "minDate", fromDate);
                $("#datepicker").datepicker("option", "maxDate", toDate);
            }

            const dtguidanceNode = detailDataXML.querySelector('dtguidance');
            if (dtguidanceNode) {
                const scheduleData = extractSchedule(dtguidanceNode.textContent);
                selectableDays = scheduleData;
            }
        });
    });
});

async function fetchXML(url) {
    const response = await fetch(url);
    if (!response.ok) throw new Error("Network response was not ok");
    const text = await response.text();
    const parser = new DOMParser();
    return parser.parseFromString(text, "text/xml");
}
</script>

</body>
