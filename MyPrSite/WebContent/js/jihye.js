	$(document).ready(function(){
		/**
		 * join_intro.jsp
		 */
		$("#chk").click(function(){
			if($("#chk").is(":checked")){
				$("input[name='join_check']").prop("checked", true);
			}else{
				$("input[name='join_check']").prop("checked", false);
			}
		});
		
		$(".confirm").click(function(){
			if($("#chk1").is(":checked") == false || $("#chk2").is(":checked") == false){
				alert("필수항목을 체크해 주세요(●'◡'●)");
				return false;
			}else{
				/*join_intro1.submit();*/
				location.href = "join.jsp";
			}
		});
		
		/**
		 * join.jsp
		 */
		$("#register").click(function(){
			if($("#id").val()==""){
		         alert("아이디를 입력해주세요 :)");
		         $("#id").focus();
		         return false;
		      }else if($("#pass").val()==""){
		         alert("비밀번호를 입력해주세요 :)");
		         $("#pass").focus();
		         return false;
		      }else if($("#cpass").val()==""){
		         alert("비밀번호를 확인을 해주세요 :)");
		         $("#cpass").focus();
		         return false;
		      }else if($("#name").val()==""){
		         alert("이름을 입력해주세요 :)");
		         $("#name").focus();
		         return false;
		      }else if($("#year").val()==""){
		         alert("년도를 입력해주세요 :)");
		         $("#year").focus();
		         return false;
		      }else if($("#month").val()=="월"){
		         alert("월을 입력해주세요 :)");
		         $("#month").focus();
		         return false;
		      }else if($("#day").val()=="일"){
		         alert("일을 입력해주세요 :)");
		         $("#day").focus();
		         return false;
		      }else if($("#gender").val()=="성별"){
		         $("#gender").val("선택 안함");
		         $("#gender").focus();
		         return true;
		      }else if($("#hp").val()==""){
		         alert("핸드폰번호를 입력해주세요 :)");
		         $("#hp").focus();
		         return false;
		      }else {
		         join1.submit();
		         location.href="http://localhost:9000/MyPrSite/index.jsp"
		      }
		});
		
		$("#id").focusout(function(){
			var id_check = /^[A-Za-z0-9]{5,13}$/;
			
			if(id_check.test($("#id").val())){
				$("#id_msg").text = "사용가능한 아이디 입니다";
				id_msg.style.color = "blue";
				$("#pass").focus();
				return true;
			}else {
				/*id_msg.classList.add("warning");*/
				$("#id_msg").addClass("warning");
				$("#id_msg").text("아이디는 5~13이내로 입력해주세요")
							.css("color", "red");
				$("#id").focus();
				return false;
			}
		});
		
		$("#pass").blur(function(){
			var pass_check = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{7,15}$/;

			if(!pass_check.test($("#pass").val())){
				$("#pass_msg").addClass("warning");
				$("#pass_msg").text("비밀번호는 영문과 숫자를 조합한 7~15자 이내로 입력해주세요");
				$("#pass_msg").css("color","red");
				$("#pass").focus();
				return false;
			}else if(pass_check.test(pass.value)){
				$("#pass_msg").text("사용가능한 비밀번호 입니다");
				$("#pass_msg").css("color","blue"); 
				$("#cpass").focus();
				return true;
			}
		});
		
		$("#cpass").blur(function(){
			if($("#pass").val() == $("#pass").val()){
				$("#cpass_msg").text("비밀번호가 일치합니다")
							   .css("color", "blue");
				$("#name").focus();
				return true;
			}else if($("#pass").val() != $("#pass").val()){
				$("#cpass_msg").addClass("warning");
				$("#cpass_msg").text("비밀번호가 일치하지 않습니다");
				$("#cpass_msg").css("color", "red");
				pass.focus();
				return false;
			}
		});
		
		$("#year").focusout(function(){
			if($("#year").val() != ""){
				if($("#year").val()>=1000 && $("#year").val()<=9999){
					$("#month").focus();
				}else {
					alert("년도(4자리)를 입력하세요");
					$("#year").val("");
					$("#year").focus();
					return false;
				}
			}
		});
		
		$("#email").blur(function(){
			var email_check = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

			if($("#email").val() == ""){
				return true;
			}else {
				if(!email_check.test($("#email").val())){
					$("#email_msg").addClass("warning");
					$("#email_msg").text("이메일 형식에 맞춰 작성해주세요");
					$("#email_msg").css("color","red");
					$("#email").focus();
					return false;
				}else {
					$("#email_msg").text("사용가능한 이메일 입니다");
					$("#email_msg").css("color", "blue");
					$("#hp").focus(); 
					return true;
				}
			}
		});
	});