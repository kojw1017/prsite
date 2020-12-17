<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.dao.*, com.myprsite.vo.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.myprsite.vo.TableVO" />
<jsp:setProperty name="vo" property="*" />
<%
	TableDAO dao = new TableDAO();
	
	boolean result = dao.update(vo);
	
	if(result){
		response.sendRedirect("success.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>