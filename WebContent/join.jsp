<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1.0">
<link rel="stylesheet" href="src/bootstrap/css/bootstrap.css">

<!-- script  -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="false"/>
	
	
	
	<!-- 회원가입 정보 입력란 -->
	<div class="container">
		<div class="col-lg-1"></div>
		<div class="col-lg-10">
			<div
				style="background-color: #f2f2f2; padding-top: 20px; padding-bottom: 20px; margin-bottom: 30px;">
				
				
				<h2 align="center">-회원가입-</h2>
				<br>

				<form id="joinForm" name="joinForm" method="post" action="joinAction.jsp">

					<!-- 아이디 -->
					<div class="form-group">
						<div class="row">
							<div class="divLeft" style="padding-right: 30px;">
								<label>아이디</label>
							</div>
							<div class="divLeft">
								<input type="text" class="form-control" name="memberId"
									id="userId" placeholder="아이디를 입력해주세요" maxlength="60" size="30"
									onkeyup="checklen(this, 30);"> 
									<label id="userIdLabel"></label><br>
							</div>
							<div class="divLeft" style="padding-left: 15px;">
								<button id="" type="button" class="btn btn-primary form-control"
									onclick="checkId()">중복확인</button>
							</div>
							
							
						</div>
					</div>


					<p>
						<!-- 패스워드 -->
					<div class="form-group">
						<div class="row">
							<div class="divLeft" style="padding-right: 16px;">
								<label>비밀번호</label>
							</div>
							<div class="divLeft">
								<input type="password" class="form-control" name="pwd1"
									id="pwd1" placeholder="6~16자 사이로 입력해주세요"
									onkeyup="checklen(this,32); checkPwdReg();" maxlength="60" size="30">
									<label id="pwdLabel1"></label><br>
							</div>
						</div>
					</div>



					<!-- 패스워드 확인 -->
					<div class="form-group">
						<div class="row">
							<div class="divLeft" style="padding-right: 15px;">
								<label style="text-align: center;">비밀번호<br>확인</label>
							</div>
							<div class="divLeft">
								<input type="password" class="form-control" name="pwd2"
									id="pwd2" onkeyup="checkPwd()" placeholder="비밀번호를 동일하게 입력해주세요"
									maxlength="60" size="30"> <label id="pwdLabel2"></label><br>
							</div>
						</div>
					</div>



					<!-- 이름 입력 -->
					<div class="form-group">
						<div class="row">
							<div class="divLeft" style="padding-right: 45px;">
								<label>이름</label>
							</div>
							<div class="divLeft">
								<input type="text" class="form-control" name="name" id="name"
									placeholder="이름을 입력해 주세요" onkeyup="checklen(this,15)"
									maxlength="15" size="24"><br>
							</div>
						</div>
					</div>					
					
					<!-- 성별 -->
					<div class="form-group">
						<div class="row">
							<div class="divLeft" style="padding-right: 42px;">
								<label>성별</label>
							</div>
							<div class="divLeft">
								<input type="radio" value="남성">남성
								<input type="radio" value="여성">여성
							</div>
						</div>
					</div>


					<!-- 우편번호 -->
					<div class="form-group joinpadding">
						<div class="row">
							<div class="divLeft" style="padding-right: 15px;">
								<label>우편번호</label>
							</div>
							<div class="divLeft" style="padding-right: 5px;">
								<input type="text" class="form-control" size="10" id="zipCode"
									name="zipCode" readonly>
							</div>
							<div class="divLeft" style="padding-right: 5px;">
								<input type="button" class="btn btn-default"
									onclick="DaumPostcode()" value="우편번호검색" />
							</div>
						</div>
						<br>
						<p>
							<!-- 상세주소 -->
						<div class="row">
							<div class="divLeft" style="padding-right: 15px;">
								<label>상세주소</label>
							</div>
							<div class="divLeft" style="padding-right: 5px;">
								<input type="text" class="form-control" name="add1"
									id="address1" size="30" readonly>
							</div>
							<div class="divLeft" style="=pazdding-right: 5px;">
								<input type="text" class="form-control" name="add2"
									id="address2" size="30" onkeyup="checklen(this,30)"
									placeholder="나머지 주소를 입력 해 주세요"> <br>
							</div>
						</div>
					</div>






					<!-- 이벤트 처리 버튼 -->
					<div class="row" align="center" style="padding-top: 20px; padding-bottom: 20px;">
						<button id="addBtn" type="button" class="btngray btn btn-primary" onclick="check()">회원가입</button>
						
						<a href="main.jsp">
							<button type="button" class="btngray btn btn-default">메인으로</button>
						</a>
						<button type="reset" class="btngray btn btn-default">다시작성</button>
						 
					</div>


				</form>
			</div>
		</div>
		<div class="col-lg-1"></div>
	</div>
	
	
	
	
	<jsp:include page="footer.jsp" flush="false"/>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="src/bootstrap/js/bootstrap.js"></script>
</body>
</html>