<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>첫번째 jsp</title>
</head>
<body>

<%-- 2. Comment Tag (jsp 주석) --%>

<%-- 3. Declaration tag (선언부) --%>
<%! private static final String DEFAULT_NAME = "Guest"; %>

<%-- Scriptlet tag (스크립트렛) --%>
<%
	// 자바코드를 그대로 작성하면 된다.
	String name = request.getParameter("name");
	if(name == null) name = DEFAULT_NAME;
	//out.println("<h1>Hello," + name + "</h1>");
%>

<%-- 5.Expression tag (표현식) --%>
<h1>Hello, <%=name %></h1></h1>
</body>
</html>