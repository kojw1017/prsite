<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.vo.*, com.myprsite.dao.*, com.google.gson.*" %>
<%
	String id = request.getParameter("u_id");
	String bid = request.getParameter("bid");
	String rcon = request.getParameter("rcon");
	String name = (String)session.getAttribute("name");
	
	ReplyVO vo = new ReplyVO();
	vo.setUser_id(id);
	vo.setBid(bid);
	vo.setRcon(rcon);
	vo.setName(name);
	
	ReplyDAO dao = new ReplyDAO();
	int result = dao.write(vo);
	out.write(String.valueOf(result));
%>
