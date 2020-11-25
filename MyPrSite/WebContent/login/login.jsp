<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jw/myprsite.css">
  </head>
  <body>
    <button id="btn_open">로그인</button>
    <div class="login_form hidden">
      <div class="login_overlay"></div>
      <div class="login_content">
        <button class="x_btn">x</button>
        <div class="image_form">
          <img src="../images/login_main.svg" />
        </div>
        <form class="input_login_form" id="login_Form">
          <ul>
            <li class="h3_login">
              <img src="../images/login_avatar.svg" />
              <h2 class="title">Welcome</h2>
            </li>
            <li class="input_area">
              <input
                type="text"
                name="id"
                id="id"
                autocomplete="off"
                required
              />
              <label class="lb_id" for="id">USER NAME</label>
            </li>
            <li class="input_area">
              <input
                type="password"
                name="pw"
                id="pw"
                autocomplete="off"
                required
              />
              <label class="lb_pw" for="pw">PASSWORD</label>
            </li>
            <li class="login_btn">
              <button type="button" id="btn_login">LOGIN</button>
            </li>
            <li class="ch_login">
              <input type="checkbox" checked /><label>로그인 유지</label>
            </li>
            <li class="find_id"><a href="#">아이디 • 비밀번호 찾기</a></li>
            <li>
              <div></div>
            </li>
            <li class="login_text">
              <p>사람온의 회원이 되어주신것을 환영합니다</p>
            </li>
            <li class="login_account">
              <a href="http://localhost:9000/MyPrSite/join/join_intro.jsp"
                >사람온 회원가입 하기</a
              >
            </li>
          </ul>
        </form>
      </div>
    </div>
    <script>
      var openBtn = document.getElementById("btn_open");
      var login_form = document.querySelector(".login_form");
      var login_overlay = document.querySelector(".login_overlay");
      var closeBtn = document.querySelector(".x_btn");
      var fixScroll = document.querySelector("body");

      var id = document.getElementById("id");
      var pw = document.getElementById("pw");
      var login_btn = document.getElementById("btn_login");

      var lb_id = document.querySelector(".lb_id");
      var lb_pw = document.querySelector(".lb_pw");

      var warningFunction = () => {
        if (id.value == "") {
          lb_id.classList.add("warning");
        } else if (pw.value == "") {
          lb_pw.classList.add("warning");
        } else {
          lb_id.classList.remove("warning");
          lb_pw.classList.remove("warning");
        }
      };
      var openForm = () => {
        login_form.classList.remove("hidden");
        fixScroll.classList.add("overflo");
      };
      var closeForm = () => {
        login_form.classList.add("hidden");
        fixScroll.classList.remove("overflo");
      };
      login_btn.addEventListener("click", warningFunction);
      login_overlay.addEventListener("click", closeForm);
      closeBtn.addEventListener("click", closeForm);
      openBtn.addEventListener("click", openForm);
    </script>
  </body>
</html>