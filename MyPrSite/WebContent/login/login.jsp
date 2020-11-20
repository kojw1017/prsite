<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_wook/myprsite.css">
<style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&display=swap');
        *{font-family: 'Noto Sans KR', sans-serif;}
		body{padding: 40px; background-color: lightgray;}   
</style>
</head>
<body>
	<a href="#popup" class="gogo_login">로그인</a>
    <div class="login_popup" id="popup">
        <a href="#a" class="x_btn">x</a>
        <div class="login_form">
            <div class="image_form">
                <div class="image_text_form">

                </div>
            </div>
            <div class="input_login_form">
                <ul>
                    <li class="h3_login"><h3>로그인</h3></li>
                    <li class="id_input"><input type="text" placeholder="이메일을 입력해주세요"></li>
                    <li class="pw_input"><input type="password" placeholder="비밀번호를 입력해주세요"></li>
                    <li class="lohin_btn"><a href="#">로그인</a></li>
                    <li class="ch_login"><input type="checkbox" checked><label>로그인 유지</label></li>
                    <li class="find_id"><a href="#">아이디 • 비밀번호 찾기</a></li>
                    <li><div></div></li>
                    <li class="login_text"><p>사람온의 회원이 되어주실것을 환영합니다</p></li>
                    <li class="login_account"><a href="http://localhost:9000/MyPrSite/join/join_intro.jsp">사람온 회원가입 하기</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="dim"></div>
</body>
</html>