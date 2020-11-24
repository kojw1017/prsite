<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
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
		}else if(year.value=="" || month.value=="월" || day.value=="일"){
			alert("생년월일을 입력해주세요 :)");
			year.focus();
			return false;
		}else if(gender.value=="성별"){
			alert("성별을 선택해주세요 :)");
			gender.focus();
			return false;
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
<link rel="stylesheet" href="http://localhost:9000/MyPrSite/css_wook/myprsite.css">
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
					<input type="password" name="cpass" placeholder="비밀번호 확인" class="cpass" id="cpass">
				</li>
				<li>
					<div><label><span class="red">*</span>성명</label></div>
					<input type="text" name="name" placeholder="성명 입력" class="name" id="name">
				</li>
				<li>
					<div><label><span class="red">*</span>생년월일</label></div>
					<input type="text" name="year" placeholder="년(4자)" class="year" id="year">
					<select name="month" class="month" id="month">
						<option>월</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
					</select>
					<select name="day" class="day" id="day">
						<option>일</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						<option>13</option>
						<option>14</option>
						<option>15</option>
						<option>16</option>
						<option>17</option>
						<option>18</option>
						<option>19</option>
						<option>20</option>
						<option>21</option>
						<option>22</option>
						<option>23</option>
						<option>24</option>
						<option>25</option>
						<option>26</option>
						<option>27</option>
						<option>28</option>
						<option>29</option>
						<option>30</option>
						<option>31</option>
					</select>
				</li>
				<li>
					<div><label><span class="red">*</span>성별</label></div>
					<select name="gender" class="gender" id="gender">
						<option>성별</option>
						<option>여자</option>
						<option>남자</option>
					</select>
				</li>
				<li>
					<div><label>본인 확인 이메일<span class="opt1">(선택)</span></label></div>
					<input type="text" name="email" placeholder="선택입력" class="email" id="email">
				</li>
				<li>
					<div><label><span class="red">*</span>휴대전화</label></div>
					<select name="number" class="number">
						<option>대한민국 +82</option>
						<option>가나 +233</option>
						<option>시리아 +963</option>
						<option>가봉 +241</option>
						<option>시에라리온 +232</option>
						<option>가이아나 +592</option>
						<option>싱가포르 +65</option>
						<option>과테말라 +502  </option>
						<option>아랍에미리트 +971</option>
						<option>괌 +1671 </option>
						<option>아르메니아 +374</option>
						<option>그레나다 +1473</option>
						<option>아르헨티나 +54</option>
						<option>그리스 +30</option>
						<option>아메리칸사모아 +1684</option>
						<option>기니 +224</option>
						<option>아이슬란드 +354</option>
						<option>기니비사우 +245 </option>
						<option>아이티 +509</option>
						<option>나미비아 +264 </option>
						<option>아일랜드 +353</option>
						<option>나우루 +674 </option>
						<option>아제르바이잔 +994</option>
						<option>나이지리아 +234 </option>
						<option>아프가니스탄 +93</option>
						<option>남극 오스트레일리아 +672 </option>
						<option>안도라 +376</option>
						<option>남아프리카공화국 +27</option>
						<option>알바니아 +355</option>
						<option>네덜란드 +31  </option>
						<option>알제리 +213</option>
						<option>네덜란드령보네르 +599</option>
						<option>앙골라 +244</option>
						<option>네덜란드령아루바 +297</option>
						<option>에디오피아 +251</option>
						<option>네팔 +977</option>
						<option>에리트레아 +291</option>
						<option>노르웨이 +47</option>
						<option>에스토니아 +372</option>
						<option>뉴질랜드 +64</option>
						<option>에콰도르 +593</option>
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