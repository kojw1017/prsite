<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.vo.*, com.myprsite.dao.*" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="com.myprsite.vo.JoinVO"/>
<jsp:setProperty name="user" property="*"/>

	<%
		String id = null;
		if(session.getAttribute("id") != null){
			id = (String) session.getAttribute("id");
		}
		if(id != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인이 되어있습니다')");
			script.println("location.href = 'http://localhost:9000/MyPrSite/index.jsp'");
			script.println("</script>");
		}
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getId(),user.getPass());
		if(result==1){//로그인성공
			session.setAttribute("id", user.getId());
			session.setAttribute("pass", user.getPass());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'http://localhost:9000/MyPrSite/index.jsp'");
			script.println("</script>");
		}
		else if(result == 0){//비밀번호불일치
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다')"); 
			script.println("history.back()");
			script.println("</script>"); 
		}else if(result == -1){//아이디가없음
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('아이디가 존재하지 않습니다')");
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