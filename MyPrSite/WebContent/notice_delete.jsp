<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자</title>
<style>
	body>aside {height:500px; width:200px;
					background-color:tomato;}
	body>aside>nav>ul>li {padding:10px;}
	body>aside>nav>ul>li>a {text-decoration:none; color:white; }

	section.section1>div>h1 {width:300px; padding:5px; text-align:left; text-indent:15px; font-size:30px;
		 border-left:15px solid #333; border-bottom:2px solid #333; margin:0 500px;}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../../header.jsp" />
	
	<!-- content -->
	<aside>
		<nav>
			<ul>
				<li><a href="http://localhost:9000/MyCGV_test/admin/member/member_list.jsp">회원관리</a></li>
				<li><a href="http://localhost:9000/MyCGV_test/admin/notice/notice_list.jsp">공지사항 관리</a></li>
			</ul>
		</nav>
	</aside>
	
	<section class="section1">
		<div>
			<h1>관리자 게시판</h1>
			<h3>정말로 삭제하시겠습니까?</h3>
			<img src="http://localhost:9000/MyCGV_test/images/delete.jpg"
				style="width:250px; height:300px;">
			<div>
				<button type="button">삭제 완료</button>
				<a href="notice_content.jsp"><button type="button">이전 페이지</button></a>
				<a href="notice_list.jsp"><button type="button">목록으로</button></a>
			</div>
		</div>
	</section>
	
	<!-- footer -->
	<jsp:include page="../../footer.jsp" />
</body>
</html>