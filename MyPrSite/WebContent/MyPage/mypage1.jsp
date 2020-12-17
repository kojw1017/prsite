<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.myprsite.vo.*, com.myprsite.dao.*" %>
<% 
	String id = request.getParameter("id");
	UserDAO dao = new UserDAO();
	JoinVO user = dao.getUserList(id); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/MyPrSite/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/MyPrSite/js/jihye.js"></script>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jh/myprsite.css">
</head>
<body class="mypage1">
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<section class="mypage1">
		<h1>회원정보 수정</h1>
		<form name="mypage1" action="joinProc.jsp" method="post">
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" id="name" value="<%= user.getName() %>" placeholder="이름"></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" id="id" value="<%= user.getId() %>" placeholder="아이디" disabled></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pass" id="pass" value="<%= user.getPass() %>" placeholder="비밀번호"></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td>
						<input type="text" name="year" id="year" value="<%= user.getBirth() %>" placeholder="년">
						<input type="text" name="month" id="month" value="<%= user.getMonth() %>" placeholder="월">
						<input type="text" name="day" id="day" value="<%= user.getDay() %>" placeholder="일">
					</td>
				</tr>
				<tr>
					<td>휴대전화</td>
					<td><input type="text" name="hp" id="hp" value="<%= user.getHp() %>" placeholder="ex)010-1234-5678"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" id="email" value="<%= user.getEmail() %>" placeholder="ex)hong@naver.com"></td>
				</tr>
				<tr>
					<td>프로모션 정보 수신 동의</td>
					<td><input type="checkbox" name="chk4" id="chk4" value="<%= user.getName() %>">수신 동의</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" id="btnUpdate" class="btn_style">수정</button>
						<button type="button" id="btnCancle" class="btn_style">취소</button>
					</td>
				</tr>
			</table>
		</form>
	</section>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>