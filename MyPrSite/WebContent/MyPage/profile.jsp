<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_wook/myprsite.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<div class="content">
		<h1>프로필 등록/수정</h1>
		<section class="section1">
			<div>
				<aside class="my_aside_profile">
					<span class="thum" id="myhome_profile_photo"></span>
					<label for="file"><span class="thum_insert" id="myhome_profile_photo_insert"></span></label>
					<input type="file" id="file">
					<div class="pf_update_name"><label>김남욱</label></div>
					<div class="pf_update_job"><label><input type="text" value="웹프로그래머"></label></div>
				</aside>
			</div>
		
		</section>
			
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>