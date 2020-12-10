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
	    }); //keyup
	    
	    
	    
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
	
	    });//jobselect
	    var count=0;
	    var radomvalue=0;
	    var arr = new Array();
	    $('.job_select , .job_select_2 ').change(function(){
	    	if(count<5){
	 	    	 if($(".job_select option:selected").val() !="전문분야" && $(".job_select_2 option:selected").val() !="상세분야" ){
	  	    		 var sel1=$(".job_select option:selected").val();
	  	    		 var sel2=$(".job_select_2 option:selected").val();
	 	    		 if(arr.includes(sel1+","+sel2)){
	 	    			 alert("중복되는 값이 있습니다.")
	 	    		 }else{
		 	 	    	count++;
		 	 	    	radomvalue++;
		  	    		//alert(count);
		 	    		$(".pf_job_select_area ul").append("<li class='job_select_content'>"+ sel1 +":&nbsp&nbsp"+sel2+"<button type='button'id='x_btn' name='"+radomvalue+"'>x</button></li>");
		 	    		$(".job_select option:eq(0)").prop("selected",true);
		 	    		$(".job_select_2 option:eq(0)").prop("selected",true);
		 	    		arr.push(sel1+","+sel2);
		 	    		//alert(arr.includes(sel1+","+sel2));
	 	    		 }
	 	    		

	 	    	$(".job_select_content>button[name='"+radomvalue+"']").click(function(){
	 	    		$(this).parent().remove();	
 	 	    		var find =arr.indexOf(sel1+","+sel2); 
	 	    		arr.splice(find,1);
		 	    	
			 	    alert(arr);
			 	    count--;
	 			   }); 
	 	    	}
	    	}else{
	    		alert("최대 5개 선택 가능합니다");
	    		$(".job_select option:eq(0)").prop("selected",true);
 	    		$(".job_select_2 option:eq(0)").prop("selected",true);
 	    		
	    	}

	    });//'.job_select , .job_select_2 '
	    
	    var arr2=new Array();
		var category_count =0;
	    $(".category-tech1-select").click(function(){
	    	//alert($(this).attr("id"));
	    		//$(this).css("color","rgb(79,123,240)");
	    	if($(this).text()=="디자인"){
	    		$(".category-tech2 *").remove();
	    		$(".category-tech2").append(
	    				"<div>Adobe Photoshop</div>",
	    				"<div>Adobe Illustrator</div>",
	    				"<div>Adobe Dreamweaver</div>",
	    				"<div>Adobe Flash</div>",
	    				"<div>Adobe XD</div>",
	    				"<div>Indesign</div>",
	    				"<div>MicroSoft PowerPoint</div>",
	    				"<div>Paint tool sai</div>",
	    				"<div>sketch up</div>",
	    				"<div>Corel Painter</div>",
	    				"<div>Sketch3</div>",
	    				"<div>Zeplin</div>",
	    				"<div>HTML & CSS</div>",
	    				"<div>Keyshot</div>",
	    				"<div>3D MAX</div>",
	    				"<div>Rhino3D</div>",
	    				"<div>CATIA</div>",
	    				"<div>3D CAD</div>",
	    				"<div>PRO-E</div>",
	    				"<div>Fusion360</div>",
	    				"<div>MAYA</div>",
	    				"<div>Zbrush</div>",
	    				"<div>Cinema4d</div>",
	    				"<div>Redshift</div>",
	    				"<div>Arnold</div>",
	    				"<div>Substance Painter</div>",
	    				"<div>CAD</div>",
	    				"<div>v-ray</div>"
	    		);
	    	}else if($(this).text()=="IT·프로그래밍"){
	    		$(".category-tech2 *").remove();
	    		$(".category-tech2").append(
	    				"<div>워드프레스</div>",
	    				"<div>HTML·CSS</div>",
	    				"<div>JavaScript</div>",
	    				"<div>Java</div>",
	    				"<div>Python</div>",
	    				"<div>PHP</div>",
	    				"<div>C#</div>",
	    				"<div>Ruby·RoR</div>",
	    				"<div>TypeScript</div>",
	    				"<div>React</div>",
	    				"<div>ASP.NET</div>",
	    				"<div>Bootstrap</div>",
	    				"<div>JSP</div>",
	    				"<div>Vue.js</div>",
	    				"<div>ASP</div>",
	    				"<div>Node.js</div>",
	    				"<div>Object-C</div>",
	    				"<div>Android Studio</div>",
	    				"<div>C#·.NET</div>",
	    				"<div>C&C++</div>",
	    				"<div>Visual Basic</div>",
	    				"<div>Lua</div>",
	    				"<div>Arduino</div>",
	    				"<div>SQL</div>",
	    				"<div>jQuery</div>",
	    				"<div>node.js</div>",
	    				"<div>Kudan</div>",
	    				"<div>Visual Studio</div>"
	    		);
	    	}else if($(this).text()=="영상·사진·음향"){
	    		$(".category-tech2 *").remove();
	    		$(".category-tech2").append(
	    				"<div>촬영</div>",
	    				"<div>편집</div>",
	    				"<div>후보정</div>",
	    				"<div>제작총괄</div>",
	    				"<div>인물</div>",
	    				"<div>제품</div>",
	    				"<div>프로필</div>",
	    				"<div>음식</div>",
	    				"<div>남자 성우</div>",
	    				"<div>여자 성우</div>",
	    				"<div>캐릭터 연기</div>",
	    				"<div>ARS 녹음</div>",
	    				"<div>내레이션</div>",
	    				"<div>채보/사보</div>",
	    				"<div>편곡</div>",
	    				"<div>작곡</div>",
	    				"<div>마스터링</div>",
	    				"<div>음원편집</div>",
	    				"<div>MC</div>",
	    				"<div>모델</div>",
	    				"<div>공연</div>"
	    		);		
	    	}else if($(this).text()=="마케팅"){
	    		$(".category-tech2 *").remove();
	    		$(".category-tech2").append(
	    				"<div>SNS 마케팅</div>",
	    				"<div>콘텐츠 제작</div>",
	    				"<div>키워드 광고</div>",
	    				"<div>블로그 마케팅</div>",
	    				"<div>카페 마케팅</div>",
	    				"<div>쇼핑몰 마케팅</div>",
	    				"<div>해외 마케팅</div>",
	    				"<div>언론 홍보 마케팅</div>",
	    				"<div>블로그체험단</div>",
	    				"<div>유튜브체험단</div>",
	    				"<div>밴드 마케팅</div>",
	    				"<div>카카오 마케팅</div>",
	    				"<div>트위터 마케팅</div>",
	    				"<div>옥외 광고 마케팅</div>",
	    				"<div>광고콘텐츠 제작</div>",
	    				"<div>TV·영상 광고 마케팅</div>"
	    		);			
	    	}else if($(this).text()=="번역·통역"){
	    		$(".category-tech2 *").remove();
	    		$(".category-tech2").append(
	    				"<div>영어 번역</div>",
	    				"<div>중국어 번역</div>",
	    				"<div>일본어 번역</div>",
	    				"<div>독일어 번역</div>",
	    				"<div>러시아어 번역</div>",
	    				"<div>베트남어 번역</div>",
	    				"<div>스페인어 번역</div>",
	    				"<div>이탈리아어 번역</div>",
	    				"<div>포르투갈어 번역</div>",
	    				"<div>프랑스어 번역</div>",
	    				"<div>영어 통역</div>",
	    				"<div>중국어 통역</div>",
	    				"<div>일본어 통역</div>",
	    				"<div>독일어 통역</div>",
	    				"<div>러시아어 통역</div>",
	    				"<div>베트남어 통역</div>",
	    				"<div>스페인어 통역</div>",
	    				"<div>이탈리아어 통역</div>",
	    				"<div>포르투갈어 통역</div>",
	    				"<div>프랑스어 통역</div>"
	    		);		

	    	}
	    var obj_name = $(this).text();
	    var random =0;
	    $(".category-tech2>div").click(function(){
	    	var name_check = obj_name+":  "+$(this).text();
	    	if(arr2.includes(name_check)){
	    		alert("중복되는 값이 존재");
	    	}else{
	    		category_count++;
	    		random++;
	    		alert(category_count);
	    		arr2.push(name_check);
		    	$(".category-tech-select").append("<div>"+obj_name+":  "+$(this).text()+"<button type='button'id='x_btn' name ='"+random+"'>x</button></div>");
		    	alert(arr2);
		    	check(random);
		    	function check(random){
			    	 $(".category-tech-select>div>button[name='"+random+"']").click(function(){
		 	    		$(this).parent().remove();	
		 	    		category_count--;
		 	    		alert(category_count);
		 	    		//$(this).parent().text().pop();
		 	 
		 	    		var find =arr2.indexOf($(this).parent().text().slice(0,-1));
				 	    arr2.splice(find,1);
				 	    	
				 	    alert(arr2);
		
		 	    		
		 			 });  
		    		
		    	}
		    	
		    	 
	    	}

	    	
	    })//

	    });//.category-tech1-select").click
	    $(".attendance_status").change(function(){
	    	 $(".attendance_status").css("color","black");
	    });
	    $("#certificate_file").change(function(){
	    	if($(this).val().length == 0){
	        } else {
	          var fileName = $(this).val().split('/').pop().split('\\').pop();
	          $("#file_name").append(fileName+" ");
	        //  $(this).parent('div').find('input:text').val(fileName);
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
		<section class="section3">
			<div class = "content_name">보유기술</div> 
			<div class ="pf_area3">
						<div class="category-tech1">
				          <div class="category-tech1-select"  id="tech1-design">디자인</div>
                          <div class="category-tech1-select"  id="tech1-it">IT·프로그래밍</div>
                          <div class="category-tech1-select"  id="tech1-viedo">영상·사진·음향</div>
                          <div class="category-tech1-select"  id="tech1-marketing">마케팅</div>
                          <div class="category-tech1-select"  id="tech1-tranlation">번역·통역</div>                    
						</div>
						<div class="category-tech2">
						</div>
						<div class="category-tech-select">
						</div>
			</div>
		</section>
		<section class="section4">
		<div class = "content_name">학력·전공</div> 
			<div class ="pf_area4">
					<div class="university_major_area"><h4>학력 전공을 작성해주세요</h4></div>	
					<div class="university_major_area_input">
						<input type="text" class="univercity_input" placeholder="학교명(ex 사람온대학교)">
						<input type="text" class="univercity_major_input" placeholder="전공(ex 컴퓨터공학과)">
						<select name="attendance_status" class="attendance_status" id="attendance_status">
							<option value="" selected disabled hidden>상태</option>
							<option value="재학">재학</option>
							<option value="휴학">휴학</option>
							<option value="이수">이수</option>
							<option value="졸업">졸업</option>
						</select>
					</div>
					<h4 class="h4_certificate">증빙 자료를 첨부해주세요  <span>선택</span> </h4>
					<div class="university_certificate">
						<label  id="file_label"><span class="thum_insert" id="myhome_profile_photo_insert">+증빙 자료 첨부</span></label>
						<input type="file" id="certificate_file">
						<span id="file_name"></span>
						<div>
							<p>
							&nbsp&nbsp&nbsp&nbsp<span>TIP</span><br> 
								
								&nbsp&nbsp&nbsp&nbsp	• 증빙자료를 첨부하시면 담당자 검토 후, 확인 마크인증아이콘를 달아드립니다.<br>
								&nbsp&nbsp&nbsp&nbsp	• 첨부 가능 자료: 재학증명서, 졸업증명서 또는 성적증명서<br>
								&nbsp&nbsp&nbsp&nbsp	• 제출한 자료는 의뢰인에게 노출되지 않습니다.<br>
							</p>
						</div>
					</div>
					
			</div>
		
		</section>
		<section class="section5">
		<div class = "content_name">자격증</div> 
			<div class ="pf_area5">
					<div class="h4_certificate_area"><h4>보유한 자격증을 작성해주세요</h4></div>	
					<div class="certificate_area">
						<input type="text" class="certificate_area_input1" placeholder="자격증명">
						<input type="text" class="certificate_area_input2" placeholder="발급일">
						<input type="text" class="certificate_area_input3" placeholder="발급기간">
						
					</div>
					<h4 class="h4_certificate">증빙 자료를 첨부해주세요  <span>선택</span> </h4>
					<div class="university_certificate">
						<label  id="file_label"><span class="thum_insert" id="myhome_profile_photo_insert">+증빙 자료 첨부</span></label>
						<input type="file" id="certificate_file">
						<span id="file_name"></span>
						<div>
							<p>
							&nbsp&nbsp&nbsp&nbsp<span>TIP</span><br> 
								
								&nbsp&nbsp&nbsp&nbsp	• 증빙자료를 첨부하시면 담당자 검토 후, 확인 마크인증아이콘를 달아드립니다.<br>
								&nbsp&nbsp&nbsp&nbsp	• 첨부 가능 자료: 재학증명서, 졸업증명서 또는 성적증명서<br>
								&nbsp&nbsp&nbsp&nbsp	• 제출한 자료는 의뢰인에게 노출되지 않습니다.<br>
							</p>
						</div>
					</div>
					
			</div>
		
		</section>
			
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>
