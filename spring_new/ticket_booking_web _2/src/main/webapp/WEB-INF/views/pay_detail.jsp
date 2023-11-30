<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>결제 정보</title>
</head>
<body>
	<h1>결제 정보</h1>
	<table border="1">
		<tr>
			<th>예매 ID</th> 
			<th>선택된 좌석</th>
			<th>총 결제액</th>
			<th>날짜</th>
			<th>장소</th>
			<th>시간</th>
		</tr>
		<tr>
			<td>${username} </td>
			<td id="seatContainer"></td>
			<td>${totalAmount}원</td>
			<td>${date}</td>
			<td>${location}</td>
			<td>${time}</td>
		</tr>
	</table>
	<script>
	var selectedSeatsStr = "${selectedSeats}";
    var selectedSeatsArray = JSON.parse(selectedSeatsStr);
    document.getElementById('seatContainer').textContent = selectedSeatsArray.join(', ');
	</script>
</body>
</html>