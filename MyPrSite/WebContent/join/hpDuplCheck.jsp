<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.dao.*" %>
<% 
	String hp = request.getParameter("hp"); 
	UserDAO dao = new UserDAO();
	int result = dao.hpCheck(hp);
	
	out.write(String.valueOf(result));
	
%>    
