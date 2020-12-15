<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<tr><th colspan="3">정보입력이 안돼요ಥ_ಥ</th></tr>
			<tr>
				<td>작성자 : 홍길동</td>
				<td>등록일 : 2020-12-12</td>
				<td>조회수 : 3</td>
			</tr>
			<tr>
				<td colspan="3" id="content">2차 프로젝트</td>
			</tr>
			<tr>
				<td colspan="3">
					<a href="board_update.jsp"><button type="button" class="btn_style">수정</button></a>
					<a href="board_list.jsp"><button type="button" class="btn_style">취소</button></a>
					<a href="board_delete.jsp"><button type="button" class="btn_style">삭제</button></a>
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