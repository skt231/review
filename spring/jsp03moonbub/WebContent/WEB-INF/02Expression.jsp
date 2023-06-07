<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% int i=10; %>
<% String str="ABCDE"; %>
<%!
public int sum(int n1, int n2){
return n1+n2;
}
%>
<%
out.print("i = "+i +"<br>");
out.print("str = "+str +"<br>");
out.print("sum = "+sum(3,5) +"<br>");
%>
<%="i = "+i +"<br>"%>
<%="str = "+str +"<br>"%>
<%="sum = "+sum(3,5) +"<br>"%>
</body>
</html>