<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.vo.*, com.myprsite.dao.*, java.util.*, com.google.gson.*"%>
<%
	String bid = request.getParameter("bid");

	ReplyDAO rdao = new ReplyDAO();
	ArrayList<ReplyVO> list = rdao.select(bid);
	
	JsonArray jarray = new JsonArray();
	JsonObject jdata = new JsonObject();
	Gson gson = new Gson();
	
	for(ReplyVO vo : list){
		JsonObject jobj = new JsonObject();
		jobj.addProperty("rid", vo.getRid());
		jobj.addProperty("uid", vo.getUser_id());
		jobj.addProperty("bid", vo.getBid());
		jobj.addProperty("rcon", vo.getRcon());
		jobj.addProperty("rdate", vo.getRdate());
		jobj.addProperty("name", vo.getName());
		
		jarray.add(jobj);
	}
	
	jdata.add("jlist", jarray);
	
	out.write(gson.toJson(jdata));
%>