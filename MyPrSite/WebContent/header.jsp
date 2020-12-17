<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jung/myprsite.css">
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jw/myprsite.css">
</head>
<body>              
<header>
     <div class="up">
           </div>
           <div class="top">    
       <a href="http://localhost:9000/MyPrSite/index.jsp">
  		<img src="http://localhost:9000/MyPrSite/images/logo.png" class="logo"></a> 
            <ul>
			   <li><!--  <input type="search" name="sea" placeholder="검색어를 입력하세요"> --></li>
               <li><a id="btn_open" href="#">로그인</a><div></div></li>
               <li><a href="http://localhost:9000/MyPrSite/MyPage/mypage.jsp?id=<%= id %>">MyPR</a><div></div></li>
               <li><a href="http://localhost:9000/MyPrSite/MyPage/mypage1_intro.jsp?id=<%= id %>">MyPage</a><div></div></li>
               <li><a href="http://localhost:9000/MyPrSite/board/board_list.jsp?id=<%= id %>">게시판</a><div></div></li>	
 				<li><a href="http://localhost:9000/MyPrSite/join/join_intro.jsp"><button type="button" class="free">무료회원가입</button></a></li>
            </ul>
         </div>
          <div class="bottom">
           <nav>
            <ul>
               <li><a href="http://localhost:9000/MyPrSite/cat/cat_design.jsp">디자인</a><div></div></li>
               <li><a href="http://localhost:9000/MyPrSite/cat/cat_programming.jsp">IT·프로그래밍</a><div></div></li>
               <li><a href="http://localhost:9000/MyPrSite/cat/cat_media.jsp"> 영상·사진·음향 </a><div></div></li>
               <li><a href="http://localhost:9000/MyPrSite/cat/cat_marketing.jsp"> 마케팅 </a><div></div></li>
               <li><a href="http://localhost:9000/MyPrSite/cat/cat_translation.jsp">번역·통역  </a><div></div></li>
		  </ul>
            </nav>
        </div>

   </header>
   
   <!-- 로그인 영역  헤더침범 ㅈㅅ-->
    <div class="login_form hidden">
      <div class="login_overlay"></div>
      <div class="login_content">
        <button class="x_btn">x</button>
        <div class="image_form">
          <img src="http://localhost:9000/MyPrSite/images/login_main.svg" />
        </div>
        <form action="http://localhost:9000/MyPrSite/login/loginAction.jsp" method="post" name="input_login_form" class="input_login_form" id="login_Form">
          <ul>
            <li class="h3_login">
              <img src="http://localhost:9000/MyPrSite/images/login_avatar.svg" />
              <h2 class="title">Welcome</h2>
            </li>
            <li class="input_area">
              <input
                type="text"
                name="userID"
                id="id"
                autocomplete="off"
                required
                oninvalid="this.setCustomValidity('아이디를 입력해주세요')"
                oninput="setCustomValidity('')"
              />
              <label class="lb_id" for="id">USER NAME</label>
            </li>
            <li class="input_area">
              <input
                type="password"
                name="userPassword"
                id="pw"
                autocomplete="off"
                required
                oninvalid="this.setCustomValidity('비밀번호를 입력해주세요')"
                oninput="setCustomValidity('')"
              />
              <label class="lb_pw" for="pw">PASSWORD</label>
            </li>
            <li class="login_btn">
              <button type="submit" id="btn_login">LOGIN</button>
            </li>
            <li class="ch_login"><input type="checkbox" checked /><label>로그인 유지</label></li>
            <li class="find_id">
              <a href="http://localhost:9000/MyPrSite/find_id_pw/find_id_pw.jsp">아이디 • 비밀번호 찾기</a>
            </li>
            <li>
              <div></div>
            </li>
            <li class="login_text">
              <p>사람온의 회원이 되어주신것을 환영합니다</p>
            </li>
            <li class="login_account">
              <a href="http://localhost:9000/MyPrSite/join/join_intro.jsp">사람온 회원가입 하기</a>
            </li>
          </ul>
        </form>
      </div>
    </div>
    <script>
      $(document).ready(function () {
        $("#btn_open").click(function () {
          $(".login_form").removeClass("hidden");
          $("body").addClass("overflo");
        });
        $(".x_btn,.login_overlay").click(function closeForm() {
          $("div.login_form").addClass("hidden");
          $("body").removeClass("overflo");
        });

        $("#btn_login").click(function () {
          if ($("#id").val() == "") {
            $(".lb_id").addClass("warning");
            setTimeout(function () {
              $(".lb_id").removeClass("warning");
            }, 1500);
          } else if ($("#pw").val() == "") {
            $(".lb_pw").addClass("warning");
            setTimeout(function () {
              $(".lb_pw").removeClass("warning");
            }, 1500);
          } else {
            input_login_Form.submit();
          }
        });
      });
    </script>
</body>
</html>