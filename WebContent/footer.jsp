<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- bootstrap css&meta  -->
	<meta name="viewport" content="width=device-width initial-scale=1.0">
	<link rel="stylesheet" href="src/bootstrap/css/bootstrap.css">
	<style>
		footer {
		    background-color: rgba(44, 62, 80, 1.0);
		
		    width: 100%;
		    bottom: 0;
		    font-weight: lighter;
		    color: white;
		}
		.footerHeader{
		    width:100%;
		    padding:1em;
		    background-color:rgba(52, 73, 94,1.0);
		    text-align:center;
		    color:white;
		}
		footer h3{
		    font-weight:lighter;
		}
		footer ul{
		    padding-left:5px;
		    list-style:none;
		}
		footer p{
		    text-align : justify;
		    font-size : 12px;
		}
		footer iframe {
		    width:100%;
		    position:relative;
		    height:170px;
		}
		.sm{
		    list-style:none;
		    overflow:auto;
		}
		.sm li {
		    display: inline;
		    padding:5px;
		    float:left;
		} 
		.sm li a img {
		    width:32px;
		}
			
	</style>
</head>
<body>


	<!-- footer -->
    <footer>
    <div class="container">
		<div class="col-md-4" >
		    <h3>About us</h3>
		    <p>
		        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
		    </p>
		</div>
		
		<div class="col-md-4">
		    <h3>Our Location </h3>
		</div>
		<div class="col-md-4" >
		    <h3>Contact Us</h3>
		    <ul>
		        <li>Phone : 123 - 456 - 789</li>
		        <li>E-mail : bit@camp.com</li>
		        <li>Fax : 123 - 456 - 789</li>
		    </ul>
		    <p>
		        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
		    </p>
		    <ul class="sm">
		        <li><a href="#" ><img src="https://www.facebook.com/images/fb_icon_325x325.png" class="img-responsive"></a></li>
		        <li><a href="#" ><img src="https://lh3.googleusercontent.com/00APBMVQh3yraN704gKCeM63KzeQ-zHUi5wK6E9TjRQ26McyqYBt-zy__4i8GXDAfeys=w300" class="img-responsive" ></a></li>
		        <li><a href="#" ><img src="http://playbookathlete.com/wp-content/uploads/2016/10/twitter-logo-4.png" class="img-responsive"  ></a></li>
		    </ul>
		</div>
    </div>
</footer>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="src/bootstrap/js/bootstrap.js"></script>
</body>
</html>