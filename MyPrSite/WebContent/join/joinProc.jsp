<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.vo.*, com.myprsite.dao.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="com.myprsite.vo.JoinVO"></jsp:useBean>
<jsp:setProperty name="user" property="*" />

<%
	System.out.println(user.getChk2());
	System.out.println(user.getChk2());
	System.out.println(user.getId());
	System.out.println(user.getPass());
	System.out.println(user.getName());
	System.out.println(user.getBirth());
	System.out.println(user.getGender());
	System.out.println(user.getEmail());
	System.out.println(user.getHp());
	
	//DB연결
	UserDAO dao = new UserDAO();
	dao.join2(user);
%>