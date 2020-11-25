<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("오늘의 날짜 및 시각"+ "<br>");
		out.println(Calendar.getInstance().getTime());
	%>
</body>
</html>