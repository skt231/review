<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 목록</title>
</head>
<body>
	<h2>회원 목록</h2>
	<table border="1">
		<thead>
			<tr>
				<th>ID</th>
				<th>사용자 이름</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}">
				<tr>
					<td>${user.id}</td>
					<td>
						<form action="/app/user/remove" method="post" id="form_${user.id}">
							<input type="hidden" name="id" value="${user.id}" /> <a
								href="javascript:void(0);" onclick="submitForm(${user.id});">${user.username}</a>
						</form>
					</td>
					<td>${user.email}</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<script type="text/javascript">
        function submitForm(userId) {
            if(confirm('정말로 삭제하시겠습니까?')) {
                document.getElementById("form_" + userId).submit();
            }
        }
    </script>
</body>
</html>
