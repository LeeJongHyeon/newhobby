<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1.0">
<link rel="stylesheet" href="src/bootstrap/css/bootstrap.css">
<!-- css -->
<link rel="stylesheet" href="src/css/myCarouselCss.css">
<link rel="stylesheet" href="src/css/teamCss.css">

<title>jSP게시판 Study</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="false"/>
	
	<div class="container" style="padding-top: 90px;">
		<div class="col-lg-3"></div>
		<div class="col-lg-6">
			<div class="jumbotron" style="padding-top:40px; height: 300px;">
				<form method="post" action="loginAction.jsp" name="deleteUserFrom">
					<h3 style="text-align: center;">로그인</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="memberId" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="pwd" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인">
				</form>
			</div>
		</div>
		<div class="col-lg-3"></div>
	</div>
	
	<div style="padding-bottom: 100px;"></div>
	<jsp:include page="footer.jsp" flush="false"/>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="src/bootstrap/js/bootstrap.js"></script>

</body>
</html>