<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1.0">
<link rel="stylesheet" href="src/bootstrap/css/bootstrap.css">
<style>
	.item img {width:100%; max-height:450px;display: block;}

</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="false"/>
	
	<div style="margin-top: -20px;">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
		
			<div class="carousel-inner" role="listbox">
				<div class="item active" align="center">
					<img src="src/images/img1.jpg">
					<div class="carousel-caption">
						<h3>1번 이미지</h3>
						<p>캐러셀 1번 이미지 입니다.</p>
					</div>
				</div>
				
				<div class="item" align="center">
					<img src="src/images/img2.jpg">
					<div class="carousel-caption">
						<h3>2번 이미지</h3>
						<p>캐러셀 2번 이미지 입니다.</p>
					</div>
				</div>
				
				<div class="item" align="center">
					<img src="src/images/img3.jpg">
					<div class="carousel-caption">
						<h3>3번 이미지</h3>
						<p>캐러셀 3번 이미지 입니다.</p>
					</div>
				</div>
				

			</div>
		
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	
	</div>
	<br>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>Hello, world!</h1>
				<p>Hobby Main Page</p>
				<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
			</div>
		</div>
	</div>
	
		
	<jsp:include page="footer.jsp" flush="false"/>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="src/bootstrap/js/bootstrap.js"></script>
</body>
</html>