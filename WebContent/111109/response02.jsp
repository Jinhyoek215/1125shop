<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p> 이 페이지는 5초마다 새로고침이 됩니다.
		<%
			response.setIntHeader("Refresh", 5);
		%>
	<p> <%=(new java.util.Date()) %>
</body>
</html>