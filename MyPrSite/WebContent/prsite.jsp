<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.myprsite.dao.*, com.myprsite.vo.*"%>
<%	
		String user_id2 = (String)session.getAttribute("id");
		ProfileDAO dao = new ProfileDAO();  
		ProfileVO vo = dao.getContent(user_id2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/MyPrSite/css/style.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
	
<script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://www.cssscript.com/demo/simple-typewriter-effect-pure-javascript-typewriterjs/typewriter.js"></script>
<script src="https://unpkg.com/typewriter-effect@latest/dist/core.js"></script>
	
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script type="text/javascript"	
	src="http://localhost:9000/MyPrSite/js/scroll.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script>
    $(window).load(function(){
        $(".loading").fadeOut(1000);
    });

	$.ajax({
		url:"profileAjaxProc.jsp",
		success:function(result){
			//JSON 형식으로 parsing
			var jdata = JSON.parse(result);
			//2-1. DHTML을 이용하여 테이블 생성 및 출력
			$("#m_name").text(jdata.jlist[0].name);
			$("#m_info_intro").text(jdata.jlist[0].info_intro);
			$("#m_info_main").text(jdata.jlist[0].info_main);
			$("#m_more").text(jdata.jlist[0].more);
			$("#m_video_title").text(jdata.jlist[0].video_title);
			$("#m_video_con").text(jdata.jlist[0].video_con);
			$("#m_id").text(jdata.jlist[0].id);
			$("#m_email").text(jdata.jlist[0].email);
			$("#m_phone").text(jdata.jlist[0].phone);
			
		}
	});//ajax
	
//id null 체크



</script>
</head>
<body>
	<div id="frame" one="Main" two="Major" three="Work" four="Contact">
		<div class='quick'>
				<ul>
					<li class="tooltip_event" title="메인화면" data-placement="left"></li>
					<li class="tooltip_event" title="나의분야" data-placement="left"></li>
					<li class="tooltip_event" title="작품소개" data-placement="left"></li>
					<li class="tooltip_event" title="마무리" data-placement="left"></li>	
				</ul>
		</div>
			<div class="right"></div>
			<div class="static_menu">
					<div class="page_intro">
						<h4>--Main</h4>
					</div>
					<!-- <button type="button" class="menu_btn" ><img src="http://localhost:9000/MyPrSite/img/menu_btn.png" width="50px" height="50px"></button> -->
					<div class="static_info">
						<h1 id="m_name"><em>1.HONG</em>GILDONG</h1>	
					</div>
				
			</div>
		</div>
	<div class="loading"></div>
	<div id="fullpage">			
		<div class="fullsection full1" pageNum="1">
			<div class="page1">
				<div class="info">
					<div class="info_intro"><h2 id="m_info_intro">2. 세상을 <br>디자인하는<br><b> CSS 개발자 </b></h2></div>
											
					<div class="info_main">
						<h3 id="m_info_main">***<br>3. 안녕하세요<br>홍길동 <br> 입니다.</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="fullsection full2" pageNum="2">	
				<div class="page2">
					<div class="profile">
						<div class="profile_main">
							<img src="img/css.png">
							<img src="img/html.png">
							<img src="img/js.png">
						</div>
  						<div class="profile_info">
			                <div class="prog">
			                <div>
			                  <div class="progs" id="progressing" any="40"></div>	
			                 </div>
			                 <div>
			                  <div class="progs" id="progressing1" any="80"></div>
			                 </div>
			                 <div>
			                  <div class="progs" id="progressing2" any="60"></div>
			                 </div>
			                </div>
			               </div>
						<div class="profile_intro">
							<div id="typing" one="CSS" two="JAVA" three="HTML" ></div>
						</div>
						<div class="profile_more">
                            <div class="skill_title">
                                <h3># More</h3>
                                <span class="tit_desc" id="m_more">
                                 	  4. 효율좋은 코드를 그려내기 위해 계속해서 공부합니다.
                                </span>
                            </div>
                            <div class="skill_list">
                                <ul>
                                    <li><img src="img/php_icon.png" alt="php 아이콘"></li>
                                    <li><img src="img/cms_icon.png" alt="cms 아이콘"></li>
                                    <li><img src="img/github_icon.png" alt="github 아이콘"></li>
                                    <li><img src="img/figma_icon.png" alt="figma 아이콘"></li>
                                </ul>
                            </div>
                        </div>
						</div>
					</div>
				</div>
		<div class="fullsection full3" pageNum="3">
			<div class="page3">
				<div class="video_exam">
					<img src="http://localhost:9000/MyPrSite/img/work.png">
				</div>
				<div class="video_info">
					<h1 id="video_title">5.샘플 비디오  제목</h1>
					<h2 id="video_con">비디오 설명</h2>
				</div>
				<div class="video">
					<video id= "player" width="900px" height="700px" src="http://localhost:9000/MyPrSite/video/2020.mp4" controls autoplay></video>
				</div>
			</div>
		</div>
		<div class="fullsection full4" pageNum="4">
			<div class="page4">
				<div class="contect_face">
				<!-- 연락부분 얼굴 -->
					<img src="https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500">
				</div>
				<div class="contect_info">
					<!-- 연락부분 -->
					<a href=""><img src="img/kakao.svg"><h2>kakaotalk</h2><p id="id">hong123</p></a>
					<a href="mailto:2@2.com"><img src="img/email.png"><h2>email</h2><p id="email">2@2.com</p></a>
					<a href="tel:010-1234-5678"><img src="img/phone.png"><h2>phone</h2><p id="phone">010-1234-5678</p></a>
				</div>
				<div class="contect_thk">
					<img src="img/thk.png">
				</div>
			</div>
		</div>
		<!-- <div class="fullsection full5" pageNum="5">
			<div class="page5">
				<span>5 PAGE</span>
			</div>
		</div> -->
	</div>

</body>
</html>