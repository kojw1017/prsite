<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.dao.*" %>
<% 
	String id = request.getParameter("id"); 
	UserDAO dao = new UserDAO();
	boolean result = dao.idCheck(id);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/MyPrSite/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/MyPrSite/js/jihye.js"></script>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jh/myprsite.css">
</head>
<body>
	<% if(result == true){ %>
		<h3>입력하신 <%= id %>는 사용가능한 아이디 입니다.</h3>
		<input type="hidden" id="h" value="<%= result %>">
		<button type="button" class="btn_style" id="btnUse">확인</button>
	<% }else{ %>
		<h3>입력하신 <%= id %>는 이미 사용중인 아이디 입니다.</h3>
		<input type="hidden" id="h" value="<%= result %>">
		<button type="button" class="btn_style" id="btnUse">확인</button>
	<% } %>
</body>
</html>