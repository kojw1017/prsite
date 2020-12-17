<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String user_id = request.getParameter("id"); %>
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
	<section class="board" id="board_write">
		<form name="board_wirte" action="writeProc.jsp" method="post">
			<input type="hidden" name="user_id" value="<%= user_id %>">
			<table border="1">
				<tr>
					<th><input type="text" name="btitle" placeholder="제목"></th>
				</tr>
				<tr>
					<td>
						<textarea name="bcontent" placeholder="내용"></textarea>
					</td>
				</tr>
				<tr>
					<td><input name="bsfile" type="file"></td>
				</tr>
				<tr>
					<td>
						<a href="board_list.jsp"><button type="button" class="btn_style">이전으로</button></a>
						<button type="submit" class="btn_style">등록</button>
						<a href="board_list.jsp"><button type="button" class="btn_style">임시 저장</button></a>
					</td>
				</tr>
			</table>
		</form>
	</section>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
	
</body>
</html>