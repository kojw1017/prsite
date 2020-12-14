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
	<section class="board" id="board_list">
		<table border=1>
			<tr>
				<td colspan="5">
					<a href="board_write.jsp"><button type="button" id="btn_write" class="btn_style">글쓰기</button></a>
				</td>
			</tr>
			<tr>
				<td colspan="5">
					<span id="list_count">게시글 5개</span>
				</td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
			<tr>
				<td>1</td>
				<td><a href="board_content.jsp">정보입력이 안돼요ಥ_ಥ</a></td>
				<td>홍길동</td>
				<td>2020-12-12</td>
				<td>2</td>
			</tr>
			<tr>
				<td>2</td>
				<td><a href="board_content.jsp">정보입력이 안돼요ಥ_ಥ</a></td>
				<td>홍길동</td>
				<td>2020-12-12</td>
				<td>3</td>
			</tr>
			<tr>
				<td>3</td>
				<td><a href="board_content.jsp">정보입력이 안돼요ಥ_ಥ</a></td>
				<td>홍길동</td>
				<td>2020-12-12</td>
				<td>1</td>
			</tr>
			<tr>
				<td>4</td>
				<td><a href="board_content.jsp">정보입력이 안돼요ಥ_ಥ</a></td>
				<td>홍길동</td>
				<td>2020-12-12</td>
				<td>5</td>
			</tr>
			<tr>
				<td>5</td>
				<td><a href="board_content.jsp">정보입력이 안돼요ಥ_ಥ</a></td>
				<td>홍길동</td>
				<td>2020-12-12</td>
				<td>3</td>
			</tr>
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