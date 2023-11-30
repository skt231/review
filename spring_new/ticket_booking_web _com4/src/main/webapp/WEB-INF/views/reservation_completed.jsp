<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>결제정보</h1>
	<table border="1">
		<tr>
			<th>예매 ID</th>
			<th>제목</th>
			<th>선택된 좌석</th>
			<th>총 결제액</th>
			<th>날짜</th>
			<th>장소</th>
			<th>시간</th>
			<th></th>
		</tr>
		<tr>
			<c:forEach items="${rsv}" var="reservation">
				<tr>
					<td>${reservation.re_username}</td>
					<td>${reservation.re_title}</td>
					<td><c:forEach items="${reservation.re_selectedSeats}"
							var="seat">
   						 ${seat.replaceAll("\\[", "").replaceAll("]", "")}
					</c:forEach></td>
					</td>
					<td>${reservation.re_totalAmount}원</td>
					<td>${reservation.re_showdate}</td>
					<td>${reservation.re_location}</td>
					<td>${reservation.re_time}</td>
					<td>
						<form action="/app/reservation/delete" method="post">
							<input type="hidden" name="userid" value="${reservation.userid}">
							<c:forEach items="${reservation.re_selectedSeats}" var="seat"
								varStatus="status">
								<input type="hidden" name="re_selectedSeats" value="${seat}">
							</c:forEach>
							<input type="hidden" name="re_mt20id"
								value="${reservation.re_mt20id}">
							<button type="submit">삭제</button>
						</form>
					</td>
				</tr>
			</c:forEach>
		</tr>
	</table>
</body>
</html>