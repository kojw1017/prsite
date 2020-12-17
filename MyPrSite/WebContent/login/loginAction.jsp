<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
		UserDAO userDAO = new UserDAO();
		String id = user.getUserID();
		int result = userDAO.login(user.getUserID(), user.getUserPassword());
		if(result==1){//로그인성공
			PrintWriter script = response.getWriter();
			response.sendRedirect("http://localhost:9000/MyPrSite/index.jsp?id="+id);
			/* script.println("<script>");
			script.println("location.href = 'http://localhost:9000/MyPrSite/index.jsp'");
			script.println("</script>"); */
		}else if(result == 0){//비밀번호불일치
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == -1){//아이디가없음
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디 입니다')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == 2){//데이터베이스오류
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류가 발생했습니다')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>
</body>
</html>