<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.vo.*, com.myprsite.dao.*, java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	TableDAO dao = new TableDAO();
	ArrayList<TableVO> list = dao.getList();
	
	String user_id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jh/myprsite.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<!-- content -->
	<section class="board" id="board_list">
		<table border=1>
			<tr>
				<td colspan="2"><span id="list_count">게시글 <%= list.size() %>개</span></td>
				<td colspan="3">
					<% if(user_id != null){  %>
						<a href="board_write.jsp"><button type="button" id="btn_write" class="btn_style">글쓰기</button></a>
					<% } %>
				</td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
			<% for(TableVO vo : list){ %>
			<tr>
				<td><%= vo.getRno() %></td>
				<td><a href="board_content.jsp?bid=<%= vo.getBid() %>"><%= vo.getBtitle() %></a></td>
				<td><% String name = dao.getName(vo.getUser_id()); %><%= name %></td>
				<td><%= vo.getBdate() %></td>
				<td><%= vo.getBhits() %></td>
			</tr>
			<% } %>
			<tr>
				<td colspan="5"> 
					<< 1 2 3 4 5 6 7 8 9 10 >>
				</td>
			</tr>
		</table>
	</section>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>