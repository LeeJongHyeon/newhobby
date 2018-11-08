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
		<h2 align="center">-회원가입-</h2>
		<br>

		<form id="joinForm" name="joinForm" method="post" action="join.do">

			<!-- 아이디 -->
			<div class="form-group">
				<div class="row">
					<div class="col-xs-3"></div>
					<div class="col-xs-6">
						<label for="memberId">아이디</label>
						<div class="input-group">
							<input type="text" class="form-control" name="memberId"
								id="memberId" placeholder="아이디를 입력해주세요" maxlength="60" size="30"
								>
							<span class="input-group-btn">
								<button id="checkId" type="button" class="btn btn-primary"
									>중복확인</button>
							</span>
						</div>
					</div>
					<div class="col-xs-3"><span id="memberIdSpan"></span></div>
				</div>
			</div>


			
				<!-- 패스워드 -->
			<div class="form-group">
				<div class="row">
					<div class="col-xs-3"></div>
					<div class="col-xs-6">
						<label for="pwd1">비밀번호</label>
						<input type="password" class="form-control" name="pwd1"
						id="pwd1" placeholder="6~16자 사이로 입력해주세요"
						maxlength="60" size="32">
					</div>
					<div class="col-xs-3"><span id="pwd1Span"></span></div>
				</div>
			</div>



			<!-- 패스워드 확인 -->
			<div class="form-group">
				<div class="row">
					<div class="col-xs-3"></div>
					<div class="col-xs-6">
						<label for="pwd2">비밀번호 확인</label>
						<input type="password" class="form-control" name="pwd2"
							id="pwd2" placeholder="비밀번호를 동일하게 입력해주세요"
							maxlength="60" size="32">
					</div>
					<div class="col-xs-3"><label id="pwd2Label"></label></div>
				</div>
			</div>



			<!-- 이름 입력 -->
			<div class="form-group">
				<div class="row">
					<div class="col-xs-3"></div>
					<div class="col-xs-6">
						<label for="name">이름</label>
						<input type="text" class="form-control" name="name" id="name"
							placeholder="이름을 입력해 주세요" 
							maxlength="20" size="15">
					</div>
					<div class="col-xs-3"><span id="nameSpan"></span></div>
				</div>
			</div>			
			
			
					
			
			<!-- 성별 -->
			<div class="form-group">
				<div class="row">
					<div class="col-xs-3"></div>
					<div class="col-xs-6">
						<label>성별</label>
						<label class="radio-inline" id="gender">
							<input type="radio" name="gender" value="M" checked="checked">남성
						</label>
						<label class="radio-inline">
							<input type="radio" name="gender" value="F">여성
						</label>
					</div>
					<div class="col-xs-3"></div>
				</div>
			</div>


			<!-- 우편번호 -->
			<div class="form-group joinpadding">
				<div class="row">
					<div class="col-xs-3"></div>
					<div class="col-xs-3">
						<label for="zipCode">우편번호</label>
						<div class="input-group">
							<input type="text" class="form-control" size="10" id="zipCode"
							name="zipCode" readonly>
							<span class="input-group-btn">
								<input id="searchAdd" type="button" class="btn btn-default"
									value="우편번호검색" />
							</span>
						</div>
					</div>
					<div class="col-xs-6"></div>
				</div>
				
				
				
				
				<!-- 상세주소 -->
				<div class="row">
					<div class="col-xs-3"></div>
					<div class="col-xs-6">
						<label for="add1">상세주소</label>
						<input type="text" class="form-control" name="add1"
							id="add1" readonly>
					</div>
					<div class="col-xs-3"></div>
				</div>
				<div class="row">
					<div class="col-xs-3"></div>
					<div class="col-xs-6">
						<input type="text" class="form-control" name="add2"
							id="add2" size="100"
							placeholder="나머지 주소를 입력 해 주세요">
					</div>
					<div class="col-xs-3"><span id="add2Span"></span></div>				
				</div>
			</div>






			<!-- 이벤트 처리 버튼 -->
			<div class="row" align="center" style="padding-top: 20px; padding-bottom: 20px;">
			
				<button id="addBtn" type="button" class="btngray btn btn-primary">회원가입</button>

				<a href="main.jsp">
					<button type="button" class="btngray btn btn-default">메인으로</button>
				</a>
				<button type="reset" class="btngray btn btn-danger">다시작성</button>
				 
			</div>
		</form>
	</div>
	
	
	
	
	<jsp:include page="footer.jsp" flush="false"/>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="src/bootstrap/js/bootstrap.js"></script>
	<script src="src/js/join.js"></script>
</body>
</html>