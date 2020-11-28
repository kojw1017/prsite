<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jw/myprsite.css">
</head>
<body class="find-id-pw-body">
    <header class="idpw_header">
      <div class="idpw_top">
        <a href="http://localhost:9000/MyPrSite/index.jsp">
          <img src="http://localhost:9000/MyPrSite/images/logo.png" class="logo"
        /></a>
      </div>
    </header>
    <div class="idpw_container">
      <div class="idpw_content">
        <h2>아이디 / 비밀번호 찾기</h2>
        <div class="idpw">
          <div class="id-content">
            <div class="idpw_head">아이디 찾기</div>
            <div class="idpw_body">
              <form name="findId_form" action="#">
                <input type="text" id="name" placeholder="이름" autocomplete="off" required />
                <input type="text" id="phone" placeholder="전화번호" autocomplete="off" required />
                <small class="">회원가입시 입력했던 이름과 전화번호를 입력해주시면 아이디를 알려드립니다.</small>
                <button id="btn_id" type="submit">아이디 찾기</button>
              </form>
            </div>
          </div>
          <div class="pw-content">
            <div class="idpw_head">비밀번호 찾기</div>
            <div class="idpw_body">
              <form name="findPass_form" action="#">
                <input type="text" id="id" placeholder="아이디" autocomplete="off" required />
                <small>회원가입시 입력했던 아이디 입력시 비밀번호를 알려드립니다.</small>
                <button id="btn_pass" type="submit">비밀번호 찾기</button>
              </form>
            </div>
          </div>
        </div>
        <div class="idpw_btn">
          <a href="http://localhost:9000/MyPrSite/index.jsp">로그인</a>
          <a href="http://localhost:9000/MyPrSite/join/join_intro.jsp">회원가입</a>
        </div>
        <div class="idpw_copyright">
          <h6 class="text-copy">Copyright © 2020 SaramOn Inc. All rights reserved.</h6>
        </div>
      </div>
    </div>
    <script></script>
  </body>
</html>