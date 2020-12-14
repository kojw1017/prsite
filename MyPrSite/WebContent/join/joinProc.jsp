<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.vo.*" %>
<%
	JoinVO vo = new JoinVO();
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String number = request.getParameter("number");
	String hp = request.getParameter("hp");
	
	String birth = year+"-"+month+"-"+day;
	
	vo.setId(id);
	vo.setPass(pass);
	vo.setName(name);
	vo.setName(birth);
	vo.setGender(gender);
	vo.setEmail(email);
	vo.setPhone(hp);
	
	System.out.println("/n시작");
	System.out.println(vo.getId());
	System.out.println(vo.getPass());
	System.out.println(vo.getName());
	System.out.println(vo.getBirth());
	System.out.println(vo.getGender());
	System.out.println(vo.getEmail());
	System.out.println(vo.getPhone());
%>