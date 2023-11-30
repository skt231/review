<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>결제 정보</title>
</head>
<body>

	<h1>${userid}${mt20id}...결제정보</h1>
	<table border="1">
		<tr>
			<th>예매 ID</th>
			<th>제목</th>
			<th>선택된 좌석</th>
			<th>총 결제액</th>
			<th>날짜</th>
			<th>장소</th>
			<th>시간</th>
		</tr>
		<tr>
			<td>${username}</td>
			<td>${title}</td>
			 <td id="seatContainer">
                <c:forEach var="seat" items="${re_selectedSeats}">
                    ${seat}<br>
                </c:forEach>
            </td>
			<td>${totalAmount}원</td>
			<td>${date}</td>
			<td>${location}</td>
			<td>${time}</td>
		</tr>
	</table>
	<form id="reservationForm" action="/app/reservation/pay" method="POST">
		<input type="hidden" name="userid" value="${userid}"> <input
			type="hidden" name="re_mt20id" value="${mt20id}"> <input
			type="hidden" name="re_username" value="${username}"> <input
			type="hidden" name="re_title" value="${title}"> <input
			type="hidden" name="re_selectedSeats" value="${selectedSeats}">
		<input type="hidden" name="re_totalAmount" value="${totalAmount}">
		<input type="hidden" name="re_showdate" value="${date}"> <input
			type="hidden" name="re_location" value="${location}"> <input
			type="hidden" name="re_time" value="${time}"> <input
			type="submit" value="결제">
	</form>
	<script>
		document.getElementById('reservationForm').addEventListener('submit',
				function(event) {
					event.preventDefault(); // 폼이 실제로 제출되지 않도록 기본 이벤트를 막음
					alert('결제가 완료되었습니다. 총 결제액: ' + "${totalAmount}" + '원');
					this.submit(); // 폼을 실제로 제출
				});

		var selectedSeatsStr = "${selectedSeats}";
		var selectedSeatsArray = JSON.parse(selectedSeatsStr);
		document.getElementById('seatContainer').textContent = selectedSeatsArray
				.join(', ');
	</script>
</body>
</html>