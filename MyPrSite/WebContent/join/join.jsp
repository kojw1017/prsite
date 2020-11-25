<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function passCheck(){
		var pass = document.getElementById("pass");
		var cpass = document.getElementById("cpass");
		var name = document.getElementById("name");
		var pass_msg = document.getElementById("pass_msg");
		
		if(pass.value == cpass.value){
			pass_msg.innerHTML = "비밀번호가 일치합니다";
			pass_msg.style.color = "blue";
			name.focus();
			return true;
		}else {
			pass_msg.innerHTML = "비밀번호가 일치하지 않습니다.";
			pass_msg.style.color = "red";
			/* pass.value = "";
			cpass.value = ""; */
			pass.focus();
			return false;
		}
	}
	
	function birthCheck(){
		var year = document.getElementById("year");
		var month = document.getElementById("month");
		if(year.value != ""){
			if(year.value>=1000 && year.value<=9999){
				month.focus();
			}else {
				alert("년도(4자리)를 입력하세요");
				year.value = "";
				year.focus();
				return false;
			}
		}
	}
	
	/* function genderCheck(){
		var gender = document.getElementById("gender");
		var hp = document.getElementById("hp");
		
		if(gender.value != "성별"){
			hp.focus();
			return true;
		}
	} */

	function formCheck(){
		var id = document.getElementById("id");
		var pass = document.getElementById("pass");
		var cpass = document.getElementById("cpass");
		var name = document.getElementById("name");
		var year = document.getElementById("year");
		var month = document.getElementById("month");
		var day = document.getElementById("day");
		var gender = document.getElementById("gender");
		var hp = document.getElementById("hp");
		
		if(id.value==""){
			alert("아이디를 입력해주세요 :)");
			id.focus();
			return false;
		}else if(pass.value==""){
			alert("비밀번호를 입력해주세요 :)");
			pass.focus();
			return false;
		}else if(cpass.value==""){
			alert("비밀번호를 확인을 해주세요 :)");
			cpass.focus();
			return false;
		}else if(name.value==""){
			alert("이름을 입력해주세요 :)");
			name.focus();
			return false;
		}else if(year.value==""){
			alert("년도를 입력해주세요 :)");
			year.focus();
			return false;
		}else if(month.value=="월"){
			alert("월을 입력해주세요 :)");
			month.focus();
			return false;
		}else if(day.value=="일"){
			alert("일을 입력해주세요 :)");
			day.focus();
			return false;
		}else if(gender.value=="성별"){
			gender.value = "선택 안함";
			email.focus();
			return true;
			/* alert("성별을 선택해주세요 :)");
			gender.focus();
			return false; */
		}else if(hp.value==""){
			alert("핸드폰번호를 입력해주세요 :)");
			hp.focus();
			return false;
		}else {
			join1.submit();
			location.href="http://localhost:9000/MyPrSite/index.jsp"
		}
	}
</script>
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_jh/myprsite.css">
</head>
<body class="join">
	<section class="join1">
		<div class="logo">
			<a href="http://localhost:9000/MyPrSite/index.jsp"><img src="http://localhost:9000/MyPrSite/images/saram.png" class="logo"></a>
		</div>
		<form name="join1" action="#" method="get">
			<ul>
				<li>
					<div><label><span class="red">*</span>아이디</label></div>
					<input type="text" name="id" placeholder="아이디 입력" class="id" id="id">
				</li>
				<li>
					<div><label><span class="red">*</span>비밀번호</label></div>
					<input type="password" name="pass" placeholder="비밀번호 입력" class="pass" id="pass">
				</li>
				<li>
					<div><label><span class="red">*</span>비밀번호 재확인</label></div>
					<input type="password" name="cpass" placeholder="비밀번호 확인" class="cpass" id="cpass" onblur="passCheck()">
					<div id="pass_msg"></div>
				</li>
				<li>
					<div><label><span class="red">*</span>성명</label></div>
					<input type="text" name="name" placeholder="성명 입력" class="name" id="name">
				</li>
				<li>
					<div><label><span class="red">*</span>생년월일</label></div>
					<input type="text" name="year" placeholder="년(4자)" class="year" id="year" onblur="birthCheck()">
					<select name="month" class="month" id="month">
						<option value="월">월</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
					<select name="day" class="day" id="day">
						<option value="일">일</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="18">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
					</select>
				</li>
				<li>
					<div><label><span class="red">*</span>성별</label></div>
					<select name="gender" class="gender" id="gender">
						<option value="성별">성별</option>
						<option value="여자">여자</option>
						<option value="남자">남자</option>
						<option value="선택 안함">선택 안함</option>
					</select>
				</li>
				<li>
					<div><label>본인 확인 이메일<span class="opt1">(선택)</span></label></div>
					<input type="text" name="email" placeholder="선택입력" class="email" id="email">
				</li>
				<li>
					<div><label><span class="red">*</span>휴대전화</label></div>
					<select name="number" class="number">
						<option value="">대한민국 +82</option>
						<option value="">가나 +233</option>
						<option value="">시리아 +963</option>
						<option value="">가봉 +241</option>
						<option value="">시에라리온 +232</option>
						<option value="">가이아나 +592</option>
						<option value="">싱가포르 +65</option>
						<option value="">과테말라 +502  </option>
						<option value="">아랍에미리트 +971</option>
						<option value="">괌 +1671 </option>
						<option value="">아르메니아 +374</option>
						<option value="">그레나다 +1473</option>
						<option value="">아르헨티나 +54</option>
						<option value="">그리스 +30</option>
						<option value="">아메리칸사모아 +1684</option>
						<option value="">기니 +224</option>
						<option value="">아이슬란드 +354</option>
						<option value="">기니비사우 +245 </option>
						<option value="">아이티 +509</option>
						<option value="">나미비아 +264 </option>
						<option value="">아일랜드 +353</option>
						<option value="">나우루 +674 </option>
						<option value="">아제르바이잔 +994</option>
						<option value="">나이지리아 +234 </option>
						<option value="">아프가니스탄 +93</option>
						<option value="">남극 오스트레일리아 +672 </option>
						<option value="">안도라 +376</option>
						<option value="">남아프리카공화국 +27</option>
						<option value="">알바니아 +355</option>
						<option value="">네덜란드 +31  </option>
						<option value="">알제리 +213</option>
						<option value="">네덜란드령보네르 +599</option>
						<option value="">앙골라 +244</option>
						<option value="">네덜란드령아루바 +297</option>
						<option value="">에디오피아 +251</option>
						<option value="">네팔 +977</option>
						<option value="">에리트레아 +291</option>
						<option value="">노르웨이 +47</option>
						<option value="">에스토니아 +372</option>
						<option value="">뉴질랜드 +64</option>
						<option value="">에콰도르 +593</option>
					</select><br>
					<input type="text" name="hp" placeholder="전화번호 입력" class="hp" id="hp">
					<button type="button" class="con_number">인증번호 받기</button><br>
					<input type="text" name="c_number" placeholder="인증번호를 입력하세요" class="c_number" disabled>
				</li>
				<li>
					<button type="button" class="btn_style" onclick="formCheck()">가입하기</button> 
					<!-- <a href="http://localhost:9000/MyPrSite/index.jsp"><button type="button" class="btn_style" onclick="formCheck()">가입하기</button></a> -->
				</li>
			</ul>
		</form>
	</section>
</body>
</html>