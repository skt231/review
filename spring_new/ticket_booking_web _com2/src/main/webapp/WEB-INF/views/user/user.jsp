<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
User 모든사용자가 사용가능
<sec:authorize access="isAnonymous()">
		<p>
			<a href="<c:url value="/user/login" />">로그인</a>
		</p>
	</sec:authorize>

	<sec:authorize access="isAuthenticated()">
		<form:form action="${pageContext.request.contextPath}/user/logout" method="POST">
			<input type="submit" value="로그아웃" />
		</form:form>
	</sec:authorize>

	<h3>
	
	<%-- <a href="<c:url value="/user/userForm.do" />">회원 가입</a> --%>
	<a href="<c:url value="/user/login" />">회원 가입</a>
	<a href="<c:url value="/member/member" />">member</a> 
	<a href="<c:url value="/admin/admin" />">관리자 홈</a>
	

</body>
</html>