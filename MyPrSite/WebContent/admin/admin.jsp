<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.myprsite.vo.*, com.myprsite.dao.*"%>
 <%

 	String id =(String) session.getAttribute("id");
	//svo 객체 != null   ===>> 로그인 성공!!
	//svo 객체 == null   ----> 로그인 하지 않은 상태
	if(id != null){
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_wook/admin.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
		<!-- content -->
	<div class="content">
			<aside class="admin_main">
				<nav>
					<ul>
						<li><a href="http://localhost:9000/MyPrSite/admin/member/member_list_ajax.jsp">회원관리</a></li>
<!-- 						<li><a href="http://localhost:9000/MyCGV/admin/member/member_list.jsp">회원관리</a></li> -->
						<!-- <li><a href="http://localhost:9000/MyPrSite/admin/notice/notice_list.jsp">공지사항 관리</a></li> -->
					</ul>
				
				</nav>
			
			</aside>
			<section class="section1" id="admin_section1"> 
				<div>
					<h1>관리자메인</h1>
					
				</div>
			
			</section>
		
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>

<% }else{%>
<script>
	alert("로그인 진행하셔야 접근 가능");
</script>

<% }%>