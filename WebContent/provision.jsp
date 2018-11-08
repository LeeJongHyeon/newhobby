<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- bootstrap css&meta  -->
<meta name="viewport" content="width=device-width initial-scale=1.0">
<link rel="stylesheet" href="src/bootstrap/css/bootstrap.css">
<!-- css -->
<link rel="stylesheet" href="src/css/myCarouselCss.css">
<link rel="stylesheet" href="src/css/teamCss.css">

<!-- script  -->

<script type="text/javascript">
function CheckForm(){ 
	$('#confirm_button').click(function() {	
		
	});
	
	
	 var req = document.provision.t.checked;
	  if(req == true){
		  location.href="join.jsp";
	 }
	else{
		$('#message').find('h4').text('회원가입 약간동의를 해주세요');
		
		$('#myModal').modal('show');
		
		
	return;
	 }
}
</script>

<title>약관</title>
</head>
<body>
	<jsp:include page="header.jsp" flush="false"/>
	
	<div class="rwo">
		<div class="col-md-12">
			<h3 align="center">회원 약관 동의</h3>
		</div>
	</div>

	<form name="provision" action="join.jsp" method="GET">
		<div class="form-group">
		<div align="center">
			<table class="table">

				<tr>
					<td align="center"><textarea rows="10" cols="150">
제 1 장 총 칙
제1조 목적
본 약관은 서비스 이용자가 주식회사 TRAVEL(이하 “회사”라 합니다)가 제공하는 온라인상의 인터넷 서비스(이하 “서비스”라고 하며, 접속 가능한 유∙무선 단말기의 종류와는 상관없이 이용 가능한 “회사”가 제공하는 모든 “서비스”를 의미합니다. 이하 같습니다)에 회원으로 가입하고 이를 이용함에 있어 회사와 회원(본 약관에 동의하고 회원등록을 완료한 서비스 이용자를 말합니다. 이하 “회원”이라고 합니다)의 권리•의무 및 책임사항을 규정함을 목적으로 합니다.
제 2 조 (약관의 명시, 효력 및 개정)
①
회사는 이 약관의 내용을 회원이 쉽게 알 수 있도록 서비스 초기 화면에 게시합니다.
②
회사는 온라인 디지털콘텐츠산업 발전법, 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제에 관한 법률, 소비자기본법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
③
회사가 약관을 개정할 경우에는 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행약관과 함께 그 적용일자 일십오(15)일 전부터 적용일 이후 상당한 기간 동안, 개정 내용이 회원에게 불리한 경우에는 그 적용일자 삼십(30)일 전부터 적용일 이후 상당한 기간 동안 각각 이를 서비스 홈페이지에 공지하고 기존 회원에게는 회사가 부여한 이메일 주소로 개정약관을 발송하여 고지합니다.
④
회사가 전항에 따라 회원에게 통지하면서 공지∙고지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 고지하였음에도 의사표시가 없는 경우에는 변경된 약관을 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 제17조 제1항의 규정에 따라 이용계약을 해지할 수 있습니다.
제2장 회원의 가입 및 관리
제 3 조 (회원가입절차)
①
서비스 이용자가 본 약관을 읽고 “동의” 버튼을 누르거나 “확인” 등에 체크하는 방법을 취한 경우 본 약관에 동의한 것으로 간주합니다.
②
회사의 서비스 이용을 위한 회원가입은 서비스 이용자가 제1항과 같이 동의한 후, 회사가 정한 온라인 회원가입 신청서에 회원 ID를 포함한 필수사항을 입력하고, “등록하기” 내지 “확인” 단추를 누르는 방법으로 합니다. 다만, 회사가 필요하다고 인정하는 경우 회원에게 별도의 서류를 제출하도록 할 수 있습니다.
③
법인고객 회원가입의 경우 회원가입 신청서의 제출, 서비스 이용대금의 납부 이외에 회사가 정하는 추가 서류의 제출이 추가적으로 필요합니다.
④
법인고객 회원가입의 경우 서비스 이용자와 이용요금 납입자가 다를 경우 회사는 이를 확인하기 위하여 제 증명을 요구할 수 있습니다.
제 4 조 (회원등록의 성립과 유보 및 거절)
①
회원등록은 제3조에 정한 절차에 의한 서비스 이용자의 회원가입 신청과 회사의 회원등록 승낙에 의하여 성립합니다. 회사는 회원가입 신청자가 필수사항 등을 성실히 입력하여 가입신청을 완료하였을 때에는 필요한 사항을 확인한 후 지체 없이 이를 승낙을 하여야 합니다. 단 회원가입 신청서 제출 이외에 별도의 자료 제출이 요구되는 경우에는 예외로 합니다.
②
회사는 아래 각 호의 1에 해당하는 경우에는 회원등록의 승낙을 유보할 수 있습니다.
1. 제공서비스 설비용량에 현실적인 여유가 없는 경우
2. 서비스를 제공하기에는 기술적으로 문제가 있다고 판단되는 경우
3. 법인 고객으로 가입신청을 하고 제3조 제3항 내지 제4항의 의무를 이행하지 않은 경우
4. 기타 회사가 재정적, 기술적으로 필요하다고 인정하는 경우
③
회사는 아래 각 호의 1에 해당하는 경우에는 회원등록을 거절할 수 있습니다.
1. 가입신청서의 내용을 허위로 기재하였거나 허위서류를 첨부하여 가입신청을 하는 경우
2. 법인 고객으로 가입신청을 하고 회사가 별도로 규정하는 일정한 기간 이내에 제3조 제3항 내지 제4항의 의무를 이행하지 않은 경우
3. 14세 미만의 아동이 개인정보제공에 대한 동의를 부모 등 법정대리인으로부터 받지 않은 경우
4. 기타 회사가 관련법령 등을 기준으로 하여 명백하게 사회질서 및 미풍양속에 반할 우려가 있음을 인정하는 경우
5. 제17조 제2항에 의하여 회사가 계약을 해지했던 회원이 다시 회원 신청을 하는 경우
제 5 조 (회원 ID 등의 관리책임)
①
회원은 서비스 이용을 위한 회원 ID, 비밀번호의 관리에 대한 책임, 본인 ID의 제3자에 의한 부정사용 등 회원의 고의∙과실로 인해 발생하는 모든 불이익에 대한 책임을 부담합니다. 단, 이것이 회사의 고의∙과실로 인하여 야기된 경우는 회사가 책임을 부담합니다.
②
회원은 회원 ID, 비밀번호 및 추가정보 등을 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 즉시 본인의 비밀번호를 수정하는 등의 조치를 취하여야 하며 즉시 이를 회사에 통보하여 회사의 안내를 따라야 합니다.
제 6 조 (개인정보의 수집 등)
회사는 서비스를 제공하기 위하여 관련 법령의 규정에 따라 회원으로부터 필요한 개인정보를 수집합니다.
제 7 조 (회원정보의 변경)
회원은 아래 각 호의 1에 해당하는 사항이 변경되었을 경우 즉시 회원정보 관리페이지에서 이를 변경하여야 합니다. 이 경우 회사는 회원이 회원정보를 변경하지 아니하여 발생한 손해에 대하여 책임을 부담하지 아니하며, 법인 회원의 경우에는 회사가 별도로 정하는 방법으로 변경할 수 있습니다.
1. 생년월일, 거주지역 및 연락처 등
2. 우편/경품 수신 주소, 취미•관심사 등
3. 서비스별 뉴스레터 수신 여부 등

제 13 조 (회원의 의무)
①
회원은 아래 각 호의 1에 해당하는 행위를 하여서는 아니 됩니다.
1. 회원가입신청 또는 변경 시 허위내용을 등록하는 행위
2. 회사의 서비스에 게시된 정보를 변경하거나 서비스를 이용하여 얻은 정보를 회사의 사전 승낙 없이 영리 또는 비영리의 목적으로 복제, 출판, 방송 등에 사용하거나 제3자에게 제공하는 행위
3. 회사가 제공하는 서비스를 이용하여 제3자에게 본인을 홍보할 기회를 제공 하거나 제3자의 홍보를 대행하는 등의 방법으로 금전을 수수하거나 서비스를 이용할 권리를 양도하고 이를 대가로 금전을 수수하는 행위
4. 회사 기타 제3자에 대한 허위의 사실을 게재하거나 지적재산권을 침해하는 등 회사나 제3자의 권리를 침해하는 행위
5. 다른 회원의 ID 및 비밀번호를 도용하여 부당하게 서비스를 이용하는 행위
6. 타인의 계좌번호 및 신용카드번호 등 타인의 허락 없이 타인의 결제정보를 이용하여 회사의 유료서비스를 이용하는 행위
7. 정크메일(junk mail), 스팸메일(spam mail), 행운의 편지(chain letters), 피라미드 조직에 가입할 것을 권유하는 메일, 외설 또는 폭력적인 메시지•화상•음성 등이 담긴 메일을 보내거나 기타 공서양속에 반하는 정보를 공개 또는 게시하는 행위
8. 정보통신망법 등 관련 법령에 의하여 그 전송 또는 게시가 금지되는 정보(컴퓨터 프로그램 등)를 전송하거나 게시하는 행위
9. 청소년보호법에서 규정하는 청소년유해매체물을 게시하는 행위
10. 공공질서 또는 미풍양속에 위배되는 내용의 정보, 문장, 도형, 음성 등을 유포하는 행위
11. 회사의 직원이나 서비스의 관리자를 가장하거나 사칭하여 또는 타인의 명의를 모용하여 글을 게시하거나 메일을 발송하는 행위
12. 컴퓨터 소프트웨어, 하드웨어, 전기통신 장비의 정상적인 가동을 방해, 파괴할 목적으로 고안된 소프트웨어 바이러스, 기타 다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시하거나 전자우편으로 발송하는 행위
13. 스토킹(stalking), 욕설, 채팅글 도배 등 다른 회원의 서비스 이용을 방해하는 행위
14. 다른 회원의 개인정보를 그 동의 없이 수집, 저장, 공개하는 행위
15. 불특정 다수의 회원을 대상으로 하여 광고 또는 선전을 게시하거나 스팸메일을 전송할 목적으로 회사에서 제공하는 프리미엄 메일 기타 서비스를 이용하여 영리활동을 하는 행위
16. 회사가 제공하는 소프트웨어 등을 개작하거나 리버스 엔지니어링, 디컴파일, 디스어셈블 하는 행위
17. 현행 법령, 회사가 제공하는 서비스에 정한 약관 기타 서비스 이용에 관한 규정을 위반하는 행위

"게시판 이용 통신판매업자등 회원"으로부터 피해를 입은 회원은 고객센터 페이지를 통하여 전항 1호에서 정한 소비자피해 분쟁조정기구에 피해구제신청을 할 수 있으며, 회사는 해당 신청을 대행하여 처리합니다.
제 20 조 (면책)
①
회사는 다음 각 호의 경우로 서비스를 제공할 수 없는 경우 이로 인하여 회원에게 발생한 손해에 대해서는 책임을 부담하지 않습니다.
1. 천재지변 또는 이에 준하는 불가항력의 상태가 있는 경우
2. 서비스 제공을 위하여 회사와 서비스 제휴계약을 체결한 제3자의 고의적인 서비스 방해가 있는 경우
3. 회원의 귀책사유로 서비스 이용에 장애가 있는 경우
4. 제1호 내지 제3호를 제외한 기타 회사의 고의∙과실이 없는 사유로 인한 경우
②
회사는 CP가 제공하거나 회원이 작성하는 등의 방법으로 서비스에 게재된 정보, 자료, 사실의 신뢰도, 정확성 등에 대해서는 보증을 하지 않으며 이로 인해 발생한 회원의 손해에 대하여는 책임을 부담하지 아니합니다.
제 21 조 (분쟁의 해결)
본 약관은 대한민국법령에 의하여 규정되고 이행되며, 서비스 이용과 관련하여 회사와 회원간에 발생한 분쟁에 대해서는 민사소송법상의 주소지를 관할하는 법원을 합의관할로 합니다.
제 22 조 (규정의 준용)
본 약관에 명시되지 않은 사항에 대해서는 관련법령에 의하고, 법에 명시되지 않은 부분에 대하여는 관습에 의합니다.
부칙
본 약관은 2016년 10월 7일부터 적용됩니다. 단, 본 약관의 공지 시점으로부터 적용일 전일까지 기간 동안에 가입한 신규회원에 대해서는 회원 가입시부터 본 약관이 적용됩니다.
		</textarea></td>
				</tr>

				<tr>
					<td align="center">
						<div class="checkbox">
							<label> <input type="checkbox" name="t"> 약관에 동의 합니다.
							</label>
						</div>
					</td>
				</tr>


			</table>
			<button name="btn" type="button" class="btn btn-primary" onclick="CheckForm()">회원가입</button>
			<a href="main.jsp"><button type="button" class="btngray btn btn-default">메인으로</button></a>
		</div>
		</div>
		
		<!-- 모달 창 -->
		    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		  
		    <div class="modal-dialog">
		     <div class="modal-content">
		      <div class="modal-body" id="body1">
		      	<div id="message" >
					<h4 align="center"></h4>
				</div>
		      </div>
		      <div class="modal-footer" id="buttonbtn1">
		      <div id="buttonbtn2" align="center">
		      <button id="confirm_button" class="btn btn-primary" data-dismiss="modal">확인</button>	
			  	
	    	 </div>
		    </div>
		    </div>
		   </div>
		</div>
		<!-- 모달 끝 -->
	</form>


	<jsp:include page="footer.jsp" flush="false"/>
	
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="src/bootstrap/js/bootstrap.js"></script>
</body>
</html>
