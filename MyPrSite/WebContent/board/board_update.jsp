<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.vo.*, com.myprsite.dao.*" %>
<% 
	String bid = request.getParameter("bid"); 
	TableDAO dao = new TableDAO();
	TableVO vo = dao.getUpdate(bid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jh/myprsite.css">
<script src="http://localhost:9000/MyPrSite/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/MyPrSite/js/jihye.js"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<!-- content -->
	<section class="board" id="board_update">
		<form name="board_wirte" action="updateProc.jsp" method="post" enctype="multipart/form-data">
			<input type="hidden" name="bid" value="<%= vo.getBid() %>">
			<table border="1">
				<tr>
					<th><input type="text" name="btitle" value="<%= vo.getBtitle() %>"></th>
				</tr>
				<tr>
					<td>
						<textarea name="bcontent"><%= vo.getBcontent() %></textarea>
					</td>
				</tr>
				<tr>
					<% if(vo.getBfile() != null){ %>
					<td><input type="file" name="bfile" id="u_bfile"><span id="bfile"><%= vo.getBfile() %></span></td>
					<% }else{ %>
					<td><input type="file" name="bfile" id="u_bfile"><span id="bfile">선택된 파일 없음</span></td>
					<% } %>
				</tr>
				<tr>
					<td>
						<a href="board_list.jsp"><button type="button" class="btn_style">이전으로</button></a>
						<button type="submit" class="btn_style">등록</button>
						<a href="board_list.jsp"><button type="button" class="btn_style">임시저장</button></a>
					</td>
				</tr>
			</table>
		</form>
	</section>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
	
</body>
</html>