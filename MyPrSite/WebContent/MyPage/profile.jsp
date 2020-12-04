<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_wook/myprsite.css">
</head>
	<script src="http://localhost:9000/MyPrSite/jquery-3.5.1.min.js"></script>
    <script>
    $(document).ready(function(){
    	
	    $('#introduce').keyup(function (e){
	    	var content = $(this).val();
	    	 $('#introduce').css("font-weight","8");
	    	/* object.style.overflowStyle="scrollbar" */
	        if (content.length > 255){
	            alert("최대 255자까지 입력 가능합니다.");
	            $(this).val(content.substring(0, 255));
	            $('#counter').html("(255 / 최대 255자)");
	        }else{
	        	
		        $('.counter').html("("+content.length+" / 최대 255자)");    //글자수 실시간 카운팅
	        }
	    });
	    
	    
	    
	    $(".job_select").change(function(){
	    	//alert($(this).val());
	    	if($(this).val()== "디자인"){
	    		
	    		$(".job_select_2 option:eq(1)").val("웹·모바일 디자인").text("웹·모바일 디자인");
	    		$(".job_select_2 option:eq(2)").val("제품·패키지").text("제품·패키지");
	    		$(".job_select_2 option:eq(3)").val("일러스트·캐리커처").text("일러스트·캐리커처");
	    	
	    	}else if($(this).val()== "IT·프로그래밍"){
	    		
	    		$(".job_select_2 option:eq(1)").val("웹사이트개발").text("웹사이트개발");
	    		$(".job_select_2 option:eq(2)").val("모바일개발").text("모바일개발");
	    		$(".job_select_2 option:eq(3)").val("데이터베이스").text("데이터베이스");
	    	
	    	}else if($(this).val()== "영상·사진·음향"){
	    		
	    		$(".job_select_2 option:eq(1)").val("영상촬영·편집").text("영상촬영·편집");
	    		$(".job_select_2 option:eq(2)").val("애니메이션").text("애니메이션");
	    		$(".job_select_2 option:eq(3)").val("3D·VR").text("3D·VR");
	    	
	    	}else if($(this).val()== "마케팅"){
	    		
	    		$(".job_select_2 option:eq(1)").val("SNS마케팅").text("SNS마케팅");
	    		$(".job_select_2 option:eq(2)").val("키워드·배너광고").text("키워드·배너광고");
	    		$(".job_select_2 option:eq(3)").val("브랜드·마케팅").text("브랜드·마케팅");
	    	
	    	}else if($(this).val()== "번역·통역"){
	    		
	    		$(".job_select_2 option:eq(1)").val("일반번역").text("일반번역");
	    		$(".job_select_2 option:eq(2)").val("통역").text("통역");
	    		$(".job_select_2 option:eq(3)").val("영상번역").text("영상번역");
	    	
	    	}
	
	    });
	    var exists = false;
	    $('.job_select , .job_select_2 ').change(function(){
 	    	 if($(".job_select option:selected").val() !="전문분야" && $(".job_select_2 option:selected").val() !="상세분야" ){
 	    		 var sel1=$(".job_select option:selected").val();
 	    		 var sel2=$(".job_select_2 option:selected").val();
	    			$(".pf_job_select_area ul").append("<li class='job_select_content'>"+ sel1 +":&nbsp&nbsp"+sel2+"<span>x</span></li>");
	    		
	    	}  
	    	
	    });
	    
	    
    });


    </script>
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
							<li><label>지역</label>
							<select name="area_select" class="area_select" >
							<option value="선택">선택</option>
							<option value="서울">서울</option>
							<option value="경기북부">경기북부</option>
							<option value="경기남부">경기남부</option>
							<option value="부산">부산</option>
							<option value="대구">대구</option>
							<option value="인천">인천</option>
							<option value="광주">광주</option>
							<option value="대전">대전</option>
							<option value="울산">울산</option>
							<option value="강원도">강원도</option>
							<option value="충북">충북</option>
							<option value="충남">충남</option>
							<option value="전북">전북</option>
							<option value="전남">전남</option>
							<option value="경북">경북</option>
							<option value="경남">경남</option>
							<option value="제주">제주</option>
							<option value="해외">해외</option>
							</select>
							</li>
							
						</ul>
					</div>
					<!-- <div class="pf_update_job"><label><input type="text" value="웹프로그래머"></label></div> -->
				</aside>
				<div class ="pf_text">
					<span>자기소개</span>
					<textarea rows="5" cols="10" name="t1" id="introduce"placeholder="자기소개"></textarea>
					<span class="counter" >(0/최대 255자)</span>
				</div>
			</div>
		</section>
		<section class="section2">
			<div class = "content_name">전문분야</div> 
			<div class ="pf_area2">
				<div class="pf_job">
							<select name="job_select" class="job_select">
							<option value="전문분야">전문분야</option>
							<option value="디자인">디자인</option>
							<option value="IT·프로그래밍">IT·프로그래밍</option>
							<option value="영상·사진·음향">영상·사진·음향</option>
							<option value="마케팅">마케팅</option>
							<option value="번역·통역">번역·통역</option>
							</select>
							<select name="job_select_2" class="job_select_2" >
							<option value="상세분야">상세분야</option>
							<option value="웹·모바일 디자인">웹·모바일 디자인</option>
							<option value="제품·패키지">제품·패키지</option>
							<option value="일러스트·캐리커처">일러스트·캐리커처</option>
							</select>
				</div>
				<div class="pf_job_select"><div class="pf_job_select_area"><ul></ul></div></div>
			</div>
		
		</section>
			
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>
