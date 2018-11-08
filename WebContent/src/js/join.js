$(function() {
	
	
	// 최종 submit 할 때 사용하는 flag
	var flag=false;
	var flag_id=false;
	var flag_pwd=false;
	
	
	// id 길이 체크
	$('#memberId').on('keyup', function() {
		var maxByte = $(this).attr('size');
		var spanId = '#' + $(this).attr('id') + 'Span';
		checklen(this, maxByte, spanId);
	});
	

	// 아이디 중복체크 눌렀을 때
	$('#checkId').on('click', function() {
		var memberId = $('#memberId').val();
		
		if (memberId==""||memberId==null) {
			$('#memberIdSpan').html("<font color='red'>아이디를 입력하세요.</font>");
			$('#memberId').focus();
			return;
		} 
		$('#memberIdSpan').html("");
		window.open("openCheckId.jsp?userId="+memberId,"","width=470,height=200,top=100,left=100");
		flag_id_t();
	});
	
	
	// flag_id 바꾸는 함수
	function flag_id_t(){
		flag_id=true;
	}
	
	
	// 비밀번호 길이 체크 및 정규식 체크
	$('#pwd1').on('keyup', function() {
		var maxByte = $(this).attr('size');
		var spanId = '#' + $(this).attr('id') + 'Span';
		checklen(this, maxByte, spanId);
		checkPwdReg(this, spanId);
	});

	
	// 비밀번호확인 길이 체크 및 정규식, 비밀번호와 비교 
	$('#pwd2').on('keyup', function() {
		var maxByte = $(this).attr('size');
		var spanId = '#' + $(this).attr('id') + 'Span';
		checklen(this, maxByte, spanId);
		checkPwdReg(this, spanId);
	});
	
	
	// 이름 길이 체크
	$('#name').on('keyup', function() {
		var maxByte = $(this).attr('size');
		var spanId = '#' + $(this).attr('id') + 'Span';
		checklen(this, maxByte, spanId);
	});
	
	
	// 상세 주소 길이 체크
	$('#add2').on('keyup', function() {
		var maxByte = $(this).attr('size');
		var spanId = '#' + $(this).attr('id') + 'Span';
		checklen(this, maxByte, spanId);
	});
	

	// 우편번호 검색 버튼 클릭시
	$('#searchAdd').on('click', function() {
		new daum.Postcode({
			oncomplete: function(data) {
				var fullAddr = '';
				var extraAddr ='';
				
				if (data.userSelectedType === 'R') {
					fullAddr = data.roadAddress;
				} else {
					fullAddr = data.jibunAddress;
				}
				
				if (data.userSelectedType === 'R') {
					if (data.bname != '') {
						extraAddr += data.bname;
					}
					if (data.buildingName !== '') {
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					fullAddr += (extraAddr !== '' ? ' ('+extraAddr+')' : '');
				}
				
				$('#zipCode').val(data.zonecode);
				$('#add1').val(fullAddr);
				
				$('#add2').focus();
			}
		})
		.open();
	});

	
	
	//회원 가입 버튼 눌렀을 때
	$('addBtn').on('click',function() {
		var memberId = $('#memberId').val();
		var pwd1 = $('#pwd1').val();
		var pwd2 = $('#pwd2').val();
		
		var name = $('#name').val();
		
		var zipCode = $('#zipCode').val();
		var add1 = $('#add1').val();
		var add2 = $('#add2').val();
		
		if (memberId==null||memberId=="") {
			alert("아이디를 입력하세요.");
			$('#memberId').focus();
			return;
		}
		
		if (name==null||name=="") {
			alert("이름을 입력하세요.");
			$('#name').focus();
			return;
		}
		
		if (pwd1==null||pwd1=="") {
			alert("비밀번호를 입력하세요.");
			$('#pwd1').focus();
			return;
		}
		
		if (pwd2==null||pwd2=="") {
			alert("비민번호를 재입력하세요.");
			$('#pwd2').focus();
			return;
		}
		
		if (zipCode==null||zipCode==""||add1==null||add1==""||add2==null||add2=="") {
			alert("주소를 입력하세요.");
			$('#add2').focus();
			return;
		}
		
		flag=true;
		
		if (flag_id==false) {
			alert("아이디 중복체크를 해주세요.");
			return;
		}
		
		if (flag_pwd==false) {
			alert("비밀번호가 일치하지 않습니다.");
			joinForm.pwd2.focus();
			return;
		}
		
		if (flag==true&&flag_id==true&&flag_pwd==true) {
			document.getElementById("joinForm").submit();
		} else {
			return;
		}
		
	});
	
	
	// 길이 체크 함수
	function checklen(obj, maxByte, spanId){
		var strValue = $(obj).val();
		var strLen = strValue.length;
		var totalByte = 0;
		var len = 0;
		var oneChar="";
		var str2="";
		
		for (var i = 0; i < strLen; i++) {
			oneChar=strValue.charAt(i);
			if (escape(oneChar).length > 4) {
				totalByte += 2;
			} else {
				totalByte++;
			}
			if (totalByte <= maxByte) {
				len = i+1;
			}
		}
		
		if (totalByte > maxByte) {
			$(spanId).html('<font class="text-danger">' + maxByte + 'Byte를 초과 입력했습니다.</font>');
		}else {
			$(spanId).html('');
		}
	}

	
	// 비밀번호 정규식 체크 함수
	function checkPwdReg(obj, spanId){
		var pwd1=$(obj).val();
		//var pwd_reg=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,16}$/;
		var pwd_reg=/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,16}$/;
		var test = pwd_reg.test(pwd1);
		if (test==false) {
			//msg="<font color='red'>6~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.</font>";
			msg="<font class='text-danger'>6~16자 영문 대소문자 및 숫자 조합을 사용하세요.</font>";
			$(spanId).html(msg);
			return;
		} else {
			$(spanId).html('');
		}
		if($(obj).attr('id')=='pwd2') {
			checkPwd()
		}
	}
	
	
	// 비밀번호와 비밀번호확인 사이 비교 함수
	function checkPwd(){
		if (joinForm.pwd1.value == joinForm.pwd2.value) {
			$('#pwd2Label').html("<font class='text-primary'>비밀번호가 일치합니다</font>");
			flag_pwd=true;
		} else {
			$('#pwd2Label').html("<font class='text-danger'>비밀번호가 일치하지 않습니다.</font>");
			flag_pwd=false;
		}
	}
	
});

