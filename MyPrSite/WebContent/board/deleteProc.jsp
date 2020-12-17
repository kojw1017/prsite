<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.dao.*"%>
<% 
	String bid = request.getParameter("bid");
	TableDAO dao = new TableDAO(); 
	boolean result = dao.delete(bid);
	System.out.println("result 결과는 : " + result);
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