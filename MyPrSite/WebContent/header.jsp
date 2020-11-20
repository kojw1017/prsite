<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>남욱헤더연습</title>
	<style>
		a{color:black;}
		*{
			margin:0px;padding:0px; /*margin은 오브젝트와의 거리 padding 은 오브젝트 안 거리*/
			font-family:"나눔바른고딕";
			text-decoration:none;
		}
		header{
			background-color:white;
		}
		
		body>header>div{
		width:1500px; margin:auto; background-color:white;
		}
		body>header>div>div{
		width:100%;
		margin:0px;
		padding:0px;
		}
		ul.menu, ul.my {color:black;}
		ul.menu{
			text-align:center;
			display:inline-block;
			width:70%;
			margin:0px;
			padding-top:0px;
			padding-right:0px;
			padding-left:0px;
		}
		ul.my{
			text-align:center;
			display:inline-block;
			width:29.7%;
			margin:0px;
			padding-top:0px;
			padding-right:0px;
			padding-left:0px;
		}
		ul.menu>li{
			display:inline-block;
			width:18%;
			padding-top:10px;
			padding-bottom:10px;
			font-size:22px;
		}
		ul.my>li{
			display:inline-block;
			width:24%;
			font-size:13px;
		}
		header>div>div>nav>div>ul.menu>li.a>a>img{width:100px;height:25px;padding-top:15px;border:1px solid red;}
		header>div>div>nav>div>ul.menu>li.b>a>img{width:26px;height:25px;border:1px solid red;padding-top:15px;color:red;}
		
	.ccc{color:red;}
	</style>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<header>
		<div class="ccc"><i class="fa fa-bars-5x"></i></div> 
		<div>
			<div>
				<nav>
					<div>
						<ul class="menu">
						<li class="a"><a href=""> <img src="http://localhost:9000/MyPrSite/images/saramin_bi_blue_english.png"></a></li>
						<li class="b"><a href=""> <img src="http://localhost:9000/MyPrSite/images/sd.png"></a></li>
						 	<li><a href="#">포토폴리오 </a></li>
						 	<li><a href="#">웹퍼블리서</a></li>
						 	<li><a href="#">웹개발 </a></li>
						 	<li><a href="#">빅데이터</a></li>
						</ul>
						<ul class="my">
						 	<li><a href="http://localhost:9000/MyPrSite/login/login.jsp">로그인 </a></li>
						 	<li><a href="http://localhost:9000/MyPrSite/join/join_intro.jsp">회원가입 </a></li>
						 	<li><a href="http://localhost:9000/MyPrSite/MyPage/mypage.jsp">마이페이지 </a></li>
						 	<li><a href="#">마이포토폴리오</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</header>

</body>
</html>