$(document).ready(function(){
    	
	    $('#introduce').keyup(function (e){
	    	var content = $(this).val();
	    	 $('#introduce').css("font-weight","8");
	    	/* object.style.overflowStyle="scrollbar" */
	        if (content.length > 255){
	            alert("최대 255자까지 입력 가능합니다.");
	            $(this).val(content.substring(0, 255));
	            $('.counter').html("(255 / 최대 255자)");
	            $('.counter').css("color","red");
	        }else{
	        	$('.counter').css("color","gray");
	        	
		        $('.counter').html("("+content.length+" / 최대 255자)");    //글자수 실시간 카운팅
	        }
	    }); //keyup
	    
	    
	    
	    $(".job_select").change(function(){
	    	//alert($(this).val());
	    	if($(this).val()== "디자인"){
	    		
	    		$(".job_select_2 option:eq(1)").val("웹·모바일 디자인").text("웹·모바일 디자인");
	    		$(".job_select_2 option:eq(2)").val("제품·패키지").text("제품·패키지");
	    		$(".job_select_2 option:eq(3)").val("일러스트·캐리커처").text("일러스트·캐리커처");
	    	
	    	}else if($(this).val()== "IT·프로그래밍"){
	    		
	    		$(".job_select_2 option:eq(1)").val("웹사이트개발").text("웹사이트개발");
	    		$(".job_select_2 option:eq(2)").val("모바일개발").text("모바일개발");
	    		$(".job_select_2 option:eq(3)").val("데이터베이스").text("데이터베이스");
	    	
	    	}else if($(this).val()== "영상·사진·음향"){
	    		
	    		$(".job_select_2 option:eq(1)").val("영상촬영·편집").text("영상촬영·편집");
	    		$(".job_select_2 option:eq(2)").val("애니메이션").text("애니메이션");
	    		$(".job_select_2 option:eq(3)").val("3D·VR").text("3D·VR");
	    	
	    	}else if($(this).val()== "마케팅"){
	    		
	    		$(".job_select_2 option:eq(1)").val("SNS마케팅").text("SNS마케팅");
	    		$(".job_select_2 option:eq(2)").val("키워드·배너광고").text("키워드·배너광고");
	    		$(".job_select_2 option:eq(3)").val("브랜드·마케팅").text("브랜드·마케팅");
	    	
	    	}else if($(this).val()== "번역·통역"){
	    		
	    		$(".job_select_2 option:eq(1)").val("일반번역").text("일반번역");
	    		$(".job_select_2 option:eq(2)").val("통역").text("통역");
	    		$(".job_select_2 option:eq(3)").val("영상번역").text("영상번역");
	    	
	    	}
	
	    });//jobselect
	    
	    
	    var count=0;
	    var radomvalue=0;
	    var arr = new Array();
	    $('.job_select , .job_select_2 ').change(function(){
	    	if(count<5){
	 	    	 if($(".job_select option:selected").val() !="전문분야" && $(".job_select_2 option:selected").val() !="상세분야" ){
	  	    		 var sel1=$(".job_select option:selected").val();
	  	    		 var sel2=$(".job_select_2 option:selected").val();
	 	    		 if(arr.includes(sel1+","+sel2)){
	 	    			 alert("중복되는 값이 있습니다.")
	 	    		 }else{
		 	 	    	count++;
		 	 	    	radomvalue++;
		  	    		//alert(count);
		 	    		$(".pf_job_select_area ul").append("<li class='job_select_content'>"+ sel1 +":&nbsp&nbsp"+sel2+"<button type='button'id='x_btn' name='"+radomvalue+"'>x</button></li>");
		 	    		$(".job_select option:eq(0)").prop("selected",true);
		 	    		$(".job_select_2 option:eq(0)").prop("selected",true);
		 	    		arr.push(sel1+","+sel2);
		 	    	
		 	    		$("#job_count_area").css("color","gray");
			    		$("#job_count_area").html("("+count+" / 최대 5개)");
			    		if(count==5){
			    			$("#job_count_area").css("color","red");
			    		}
		 	    		//alert(arr.includes(sel1+","+sel2));
	 	    		 }
	 	    		

	 	    	$(".job_select_content>button[name='"+radomvalue+"']").click(function(){
	 	    		$(this).parent().remove();	
 	 	    		var find =arr.indexOf(sel1+","+sel2); 
	 	    		arr.splice(find,1);
		 	    	
			 	    /* alert(arr); */
			 	    count--;
			 	    $("#job_count_area").css("color","gray");
		    		$("#job_count_area").html("("+count+" / 최대 5개)");
	 			   }); 
	 	    	}
	    	}else if(count==5){
	    		alert("최대 5개 선택 가능합니다");
	    		$(".job_select option:eq(0)").prop("selected",true);
 	    		$(".job_select_2 option:eq(0)").prop("selected",true);
 	    		
	    	}

	    });//'.job_select , .job_select_2 '
	    
	    
	    
	    var arr2=new Array();
		var category_count =0;
	    $(".category-tech1-select").click(function(){
	    	//alert($(this).attr("id"));
	    		//$(this).css("color","rgb(79,123,240)");
	    	if($(this).text()=="디자인"){
	    		$(".category-tech2 *").remove();
	    		$(".category-tech2").append(
	    				"<div>Adobe Photoshop</div>",
	    				"<div>Adobe Illustrator</div>",
	    				"<div>Adobe Dreamweaver</div>",
	    				"<div>Adobe Flash</div>",
	    				"<div>Adobe XD</div>",
	    				"<div>Indesign</div>",
	    				"<div>MicroSoft PowerPoint</div>",
	    				"<div>Paint tool sai</div>",
	    				"<div>sketch up</div>",
	    				"<div>Corel Painter</div>",
	    				"<div>Sketch3</div>",
	    				"<div>Zeplin</div>",
	    				"<div>HTML & CSS</div>",
	    				"<div>Keyshot</div>",
	    				"<div>3D MAX</div>",
	    				"<div>Rhino3D</div>",
	    				"<div>CATIA</div>",
	    				"<div>3D CAD</div>",
	    				"<div>PRO-E</div>",
	    				"<div>Fusion360</div>",
	    				"<div>MAYA</div>",
	    				"<div>Zbrush</div>",
	    				"<div>Cinema4d</div>",
	    				"<div>Redshift</div>",
	    				"<div>Arnold</div>",
	    				"<div>Substance Painter</div>",
	    				"<div>CAD</div>",
	    				"<div>v-ray</div>"
	    		);
	    	}else if($(this).text()=="IT·프로그래밍"){
	    		$(".category-tech2 *").remove();
	    		$(".category-tech2").append(
	    				"<div>워드프레스</div>",
	    				"<div>HTML·CSS</div>",
	    				"<div>JavaScript</div>",
	    				"<div>Java</div>",
	    				"<div>Python</div>",
	    				"<div>PHP</div>",
	    				"<div>C#</div>",
	    				"<div>Ruby·RoR</div>",
	    				"<div>TypeScript</div>",
	    				"<div>React</div>",
	    				"<div>ASP.NET</div>",
	    				"<div>Bootstrap</div>",
	    				"<div>JSP</div>",
	    				"<div>Vue.js</div>",
	    				"<div>ASP</div>",
	    				"<div>Node.js</div>",
	    				"<div>Object-C</div>",
	    				"<div>Android Studio</div>",
	    				"<div>C#·.NET</div>",
	    				"<div>C&C++</div>",
	    				"<div>Visual Basic</div>",
	    				"<div>Lua</div>",
	    				"<div>Arduino</div>",
	    				"<div>SQL</div>",
	    				"<div>jQuery</div>",
	    				"<div>node.js</div>",
	    				"<div>Kudan</div>",
	    				"<div>Visual Studio</div>"
	    		);
	    	}else if($(this).text()=="영상·사진·음향"){
	    		$(".category-tech2 *").remove();
	    		$(".category-tech2").append(
	    				"<div>촬영</div>",
	    				"<div>편집</div>",
	    				"<div>후보정</div>",
	    				"<div>제작총괄</div>",
	    				"<div>인물</div>",
	    				"<div>제품</div>",
	    				"<div>프로필</div>",
	    				"<div>음식</div>",
	    				"<div>남자 성우</div>",
	    				"<div>여자 성우</div>",
	    				"<div>캐릭터 연기</div>",
	    				"<div>ARS 녹음</div>",
	    				"<div>내레이션</div>",
	    				"<div>채보/사보</div>",
	    				"<div>편곡</div>",
	    				"<div>작곡</div>",
	    				"<div>마스터링</div>",
	    				"<div>음원편집</div>",
	    				"<div>MC</div>",
	    				"<div>모델</div>",
	    				"<div>공연</div>"
	    		);		
	    	}else if($(this).text()=="마케팅"){
	    		$(".category-tech2 *").remove();
	    		$(".category-tech2").append(
	    				"<div>SNS 마케팅</div>",
	    				"<div>콘텐츠 제작</div>",
	    				"<div>키워드 광고</div>",
	    				"<div>블로그 마케팅</div>",
	    				"<div>카페 마케팅</div>",
	    				"<div>쇼핑몰 마케팅</div>",
	    				"<div>해외 마케팅</div>",
	    				"<div>언론 홍보 마케팅</div>",
	    				"<div>블로그체험단</div>",
	    				"<div>유튜브체험단</div>",
	    				"<div>밴드 마케팅</div>",
	    				"<div>카카오 마케팅</div>",
	    				"<div>트위터 마케팅</div>",
	    				"<div>옥외 광고 마케팅</div>",
	    				"<div>광고콘텐츠 제작</div>",
	    				"<div>TV·영상 광고 마케팅</div>"
	    		);			
	    	}else if($(this).text()=="번역·통역"){
	    		$(".category-tech2 *").remove();
	    		$(".category-tech2").append(
	    				"<div>영어 번역</div>",
	    				"<div>중국어 번역</div>",
	    				"<div>일본어 번역</div>",
	    				"<div>독일어 번역</div>",
	    				"<div>러시아어 번역</div>",
	    				"<div>베트남어 번역</div>",
	    				"<div>스페인어 번역</div>",
	    				"<div>이탈리아어 번역</div>",
	    				"<div>포르투갈어 번역</div>",
	    				"<div>프랑스어 번역</div>",
	    				"<div>영어 통역</div>",
	    				"<div>중국어 통역</div>",
	    				"<div>일본어 통역</div>",
	    				"<div>독일어 통역</div>",
	    				"<div>러시아어 통역</div>",
	    				"<div>베트남어 통역</div>",
	    				"<div>스페인어 통역</div>",
	    				"<div>이탈리아어 통역</div>",
	    				"<div>포르투갈어 통역</div>",
	    				"<div>프랑스어 통역</div>"
	    		);		

	    	}
	    var obj_name = $(this).text();
	    var random =0;
	    $(".category-tech2>div").click(function(){
	    	var name_check = obj_name+":  "+$(this).text();
	    	if(arr2.includes(name_check)){
	    		alert("중복되는 값이 존재");
	    	}else if(category_count<6){
	    		category_count++;
	    		$("#tech_count_area").css("color","gray");
	    		$("#tech_count_area").html("("+category_count+" / 최대 6개)");
	    		random++;
	    		/* alert(category_count); */
	    		arr2.push(name_check);
	    		if(category_count==6){
	    			$("#tech_count_area").css("color","red");
	    		}
		    	$(".category-tech-select").append("<div>"+obj_name+":  "+$(this).text()+"<button type='button'id='x_btn' name ='"+random+"'>x</button></div>");
		    	/* alert(arr2); */
		    	check(random);
		    	function check(random){
			    	 $(".category-tech-select>div>button[name='"+random+"']").click(function(){
		 	    		$(this).parent().remove();	
		 	    		category_count--;
		 	    		$("#tech_count_area").css("color","gray");
		 	    		$("#tech_count_area").html("("+category_count+" / 최대 6개)");
		 	    		/* alert(category_count); */
		 	    		//$(this).parent().text().pop();
		 	    		
		 	    		var find =arr2.indexOf($(this).parent().text().slice(0,-1));
				 	    arr2.splice(find,1);
				 	    	
				 	   /*  alert(arr2); */
		
		 	    		
		 			 });  
		    		
		    	}
		    	
		    	 
	    	}else if(category_count==6){
	    		alert("최대 6개까지 선택 가능합니다");
	    		
	    	}

	    	
	    })//

	    });//.category-tech1-select").click
	    
	    
	    
	    $(".attendance_status").change(function(){
	    	 $(".attendance_status").css("color","black");
	    });
	    $(".career_year").change(function(){
	    	 $(".career_year").css("color","black");		
	    });
	    $(".career_month").change(function(){
	    	 $(".career_month").css("color","black");		
	    });
	    $("#certificate_file").change(function(){
	    	if($(this).val().length == 0){
	        } else {
	          var fileName = $(this).val().split('/').pop().split('\\').pop();
	          $("#file_name").append(fileName+" ");
	        //  $(this).parent('div').find('input:text').val(fileName);
	        }
	    	
	    });
	    $("#certificate_area_file").change(function(){
	    	if($(this).val().length == 0){
	        } else {
	          var fileName = $(this).val().split('/').pop().split('\\').pop();
	          $("#certificate_file_name").append(fileName+" ");
	        //  $(this).parent('div').find('input:text').val(fileName);
	        }
	    	
	    });
	    $("#certificate_career_area_file").change(function(){
	    	if($(this).val().length == 0){
	        } else {
	          var fileName = $(this).val().split('/').pop().split('\\').pop();
	          $("#certificate_career_file_name").append(fileName+" ");
	        //  $(this).parent('div').find('input:text').val(fileName);
	        }
	    	
	    });
	    
	    $("#file").change(function(){
	    	 readURL(this);
	    })
	    
	   function readURL(input) {
            if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
/*                     $('#myhome_profile_photo').attr('src', e.target.result); */
                    $('#myhome_profile_photo').css("background-image","url("+e.target.result)+")";
                }

              reader.readAsDataURL(input.files[0]);
            }
        }
	     
	    
	    
    });