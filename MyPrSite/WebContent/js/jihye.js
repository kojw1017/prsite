	/**
	 * join_intro.jsp
	 */
	function introCheck(){
		var chk1 = document.getElementById("chk1");
		var chk2 = document.getElementById("chk2");
		
		if(chk1.checked == false || chk2.checked == false){
			alert("필수항목에 체크해 주세요 :)");
			return false;
		}else {
			/*join_intro1.submit();*/
			location.href = "join.jsp";
		}
	}

	/**
	 * join.jsp
	 */
	function idCheck(){
		var id = document.getElementById("id");
		var pass = document.getElementById("pass");
		var id_msg = document.getElementById("id_msg");
		var id_check = /^[A-Za-z0-9]{5,13}$/;

		if(id_check.test(id.value)){
			id_msg.innerHTML = "사용가능한 아이디 입니다";
			id_msg.style.color = "blue";
			pass.focus();
			return true;
		}else {
			id_msg.classList.add("warning");
			id_msg.innerHTML = "아이디는 5~13이내로 입력해주세요";
			id_msg.style.color = "red";
			id.focus();
			return false;
		}
		
	}
	
	function passCheck(){
		var pass = document.getElementById("pass");
		var cpass = document.getElementById("cpass");
		var pass_msg = document.getElementById("pass_msg");
		var pass_check = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{7,15}$/;

		if(!pass_check.test(pass.value)){
			pass_msg.classList.add("warning");
			pass_msg.innerHTML = "비밀번호는 영문과 숫자를 조합한 7~15자 이내로 입력해주세요";
			pass_msg.style.color = "red";
			pass.focus();
			return false;
		}else if(pass_check.test(pass.value)){
			pass_msg.innerHTML = "사용가능한 비밀번호 입니다";
			pass_msg.style.color = "blue"; 
			cpass.focus();
			return true;
		}
	}
	
	function cpassCheck(){
		var pass = document.getElementById("pass");
		var cpass = document.getElementById("cpass");
		var name = document.getElementById("name");
		var cpass_msg = document.getElementById("cpass_msg");
		
		if(pass.value == cpass.value){
			cpass_msg.innerHTML = "비밀번호가 일치합니다";
			cpass_msg.style.color = "blue";
			name.focus();
			return true;
		}else if(pass.value != cpass.value){
			cpass_msg.classList.add("warning");
			cpass_msg.innerHTML = "비밀번호가 일치하지 않습니다.";
			cpass_msg.style.color = "red";
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
	
	function emailCheck(){
		var email = document.getElementById("email");
		var hp = document.getElementById("hp");
		var email_check = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		var email_msg = document.getElementById("email_msg"); 
		
		if(email.value == ""){
			return true;
		}else {
			if(!email_check.test(email.value)){
				email_msg.classList.add("warning");
				email_msg.innerHTML = "이메일 형식에 맞춰 작성해주세요";
				email_msg.style.color = "red";
				email.focus();
				return false;
			}else {
				email_msg.innerHTML = "사용가능한 이메일 입니다";
				email_msg.style.color = "blue";
				hp.focus(); 
				return true;
			}
		}
	}
	
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
		}else if(!emailCheck()){
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