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
	<div class="container">
		<div class="col-lg-3"></div>
		<div class="col-lg-6">
			<div class="jumbotron" style="padding-top:40px; height: 300px;">
				<form method="post" action="memberIdCheck.do" name="deleteUserFrom">
					<h3 style="text-align: center;">중복확인</h3>
					<div class="form-group">
						<input type="text" class="form-control" name="memberId" maxlength="20" value="${memberId }" readonly="readonly">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="확인하기">
				</form>
			</div>
		</div>
		<div></div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="src/bootstrap/js/bootstrap.js"></script>

</body>
</html>