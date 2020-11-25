<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>

<%
	MultipartRequest multi = new MultipartRequest(request,"C:\\upload",5*1024*1024,"utf-8",new DefaultFileRenamePolicy());
	Enumeration params = multi.getParameterNames();
	
	while(params.hasMoreElements()){
		String name = (String) params.nextElement();
		String value = multi.getParameter(name);
		out.println(name + "=" + value+ "<br>");
	}
	out.println("----------------------------<br>");
%>