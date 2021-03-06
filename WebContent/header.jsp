<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- bootstrap css&meta  -->
<meta name="viewport" content="width=device-width initial-scale=1.0">
<link rel="stylesheet" href="src/bootstrap/css/bootstrap.css">
<title>Travel</title>
</head>
<body>

	<%
		String memberID = null;
		if(session.getAttribute("memberID") != null){
			memberID = (String)session.getAttribute("memberID");
		}
	%>
	<!-- 상단 네비게이션 바 -->
	<nav class="navbar navbar-inverse">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#nb-c1" aria-expended="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.do">HOBBY</a>
		</div>
		
		<div class="navbar-collapse" id="nb-c1">
			<ul class="nav navbar-nav">
				<li><a href="main.do">메인</a></li>
				<li><a href="hobbyList.do">취미</a></li>
				<li><a href="admin.do">관리자</a></li>
			</ul>
			
			<%
				if(memberID == null){	
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expended="false">
						접속하기<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="login.do">로그인</a></li>
						<li><a href="join.do">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%				
				} else {
			%>

			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expended="false">
						내 정보관리<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="myPage.do">내 정보</a></li>
						<li><a href="logout.do">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<% 
				}
			
			%>

		</div>
	</nav> <!-- nav end -->
	

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="src/bootstrap/js/bootstrap.js"></script>
</body>
</html>