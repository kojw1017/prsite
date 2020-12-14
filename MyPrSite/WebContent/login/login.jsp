<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/MyPrSite/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jw/myprsite.css">
  </head>
  <body>
    <button id="btn_open">로그인</button>
    <div class="login_form hidden">
      <div class="login_overlay"></div>
      <div class="login_content">
        <button class="x_btn">x</button>
        <div class="image_form">
          <img src="http://localhost:9000/MyPrSite/images/login_main.svg" />
        </div>
        <form action="#" method="post" name="input_login_form" class="input_login_form" id="login_Form">
          <ul>
            <li class="h3_login">
              <img src="http://localhost:9000/MyPrSite/images/login_avatar.svg" />
              <h2 class="title">Welcome</h2>
            </li>
            <li class="input_area">
              <input
                type="text"
                name="id"
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
                name="pw"
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