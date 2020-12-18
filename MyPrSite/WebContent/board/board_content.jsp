<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.vo.*, com.myprsite.dao.*" %>
<% 
	String id = request.getParameter("id");
	String bid = request.getParameter("bid");
	TableDAO dao = new TableDAO();
	TableVO vo = dao.getContent(bid);
	
	dao.setHits(bid);
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
	<section class="board" id="board_content">
		<table border=1>
			<tr><th colspan="3"><%= vo.getBtitle() %></th></tr>
			<tr>
				<td>작성자 : <%= vo.getUser_id() %></td>
				<td>등록일 : <%= vo.getBdate() %></td>
				<td>조회수 : <%= vo.getBhits()+1 %></td>
			</tr>
			<tr>
				<td colspan="3" id="content">
					<%= vo.getBcontent().replace("\r\n", "<br>") %><br>
					<% if(vo.getBsfile() != null){ %>
						<img src="http://localhost:9000/MyPrSite/upload/<%= vo.getBsfile() %>">
					<% } %>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<a href="board_update.jsp?bid=<%= bid %>"><button type="button" class="btn_style">수정</button></a>
					<a href="board_list.jsp"><button type="button" class="btn_style">목록</button></a>
					<a href="board_delete.jsp?bid=<%= bid %>"><button type="button" class="btn_style">삭제</button></a>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<img src="http://localhost:9000/MyPrSite/images/circle.png" id="user_img">
					<textarea placeholder="댓글을 남겨주세요.(200자)"></textarea>
					<button type="button" id="btn_send" class="btn_style">작성</button>
				</td>
			</tr>
		</table>
	</section>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
	
</body>
</html>