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
	<section class="board" id="board_delete">
		<table border=1>
			<tr>
				<th>정말 삭제 하시겠습니까?</th>
			</tr>
			<tr>
				<td><img src="http://localhost:9000/MyPrSite/images/delete.png" id="delete_img"></td>
			</tr>
			<tr>
				<td>
					<a href="board_list.jsp"><button type="button" class="btn_style">삭제</button></a>		
					<a href="board_content.jsp"><button type="button" class="btn_style">취소</button>	</a>
				</td>
			</tr>
		</table>
	</section>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
	
</body>
</html>