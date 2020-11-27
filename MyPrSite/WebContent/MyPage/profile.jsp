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
			<div class ="pf_area1">
				<aside class="my_aside_profile">
					<span class="thum" id="myhome_profile_photo"></span>
					<label for="file"><span class="thum_insert" id="myhome_profile_photo_insert"></span></label>
					<input type="file" id="file">
					<!-- <div class="pf_update_name"><label class="name_header">이름 : </label><label class="name_content">김남욱</label></div> -->
					<div class="pf_update_name"> 
						<ul>
							<li>이름</li>
							<li>김남욱</li>
							<li><label>주요직무</label>
							<select name="job_select" class="job_select" >
							<option value="선택">선택</option>
							<option value="디자인">디자인</option>
							<option value="IT·프로그래밍">IT·프로그래밍</option>
							<option value="영상·사진·음향">영상·사진·음향</option>
							<option value="마케팅">마케팅</option>
							<option value="번역·통역">번역·통역</option>
							</select>
							</li>
							
						</ul>
					</div>
					<!-- <div class="pf_update_job"><label><input type="text" value="웹프로그래머"></label></div> -->
				</aside>
				<div class ="pf_text">
					<textarea rows="15" cols="100" name="bcontent">ㅁㄴㅇㅁㅇㅁㅇㅁㄴㅁㄴㅇㅁㄴㅇㅁㄴㅇ
					
					</textarea>
				</div>
			</div>
		
		</section>
			
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>