function signinCheck(){
	
	var loginform = document.login_form;
	var loginCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/);
	
	if($("#signin_id").val() == ""){
		alert("아이디를 입력 해 주세요.");
		$("#signin_id").focus();
		return false;
	}
	if(!loginCheck.test($("#signin_id").val())){
		alert("아이디는 영문, 숫자 최소 4글자에서 최대12글자 입니다.");
		$("#signin_id").val("");
		$("#signin_id").focus();
		return false;
	}
	
	if($("#signin_pw").val() == ""){
		alert("비밀번호를 입력 해 주세요.");
		$("#signin_pw").focus();
		return false;
	}
	if(!loginCheck.test($("#signin_pw").val())){
		alert("비밀번호는 영문, 숫자 최소 4글자에서 최대12글자 입니다.");
		$("#signin_pw").val("");
		$("#signin_pw").focus();
		return false;
	}
	
	
	//alert("로그인 하였습니다.");
	loginform.action = "/dev/login_form.do";
	loginform.submit();
}



function signupCheck(){
	
	var signform = document.sign_form;
	var getCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/);
	var getName = RegExp(/^[가-힣]+$/);
	var getPhone = RegExp(/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/);
	var getAge = RegExp(/[0-9]/);
//중복체크
//	var userId = $("#signup_id").val();
//	var idData = {"signup_id" : userId}
//	
//	if(userId.length < 1){
//		alert("아이디를 입력 해 주세요.");
//		$("#signup_id").focus();
//		return false;
//	} else if(userId.length < 4){
//		alert("아이디는 영문, 숫자 최소 4글자에서 최대12글자 입니다.");
//		return false;
//	} else {
//		$.ajax({
//			type : "POST",
//			url : "/dev/checkId.do",
//			data : idData,
//			dataType : "json",
//			success : function(result){
//				if(result == 1){
//					alert("이미 존재하는 아이디입니다.");
//					$("#signup_id").focus();
//					return false;
//				}
//			}
//		});
//	}

	if($("#signup_id").val() == ""){
		alert("아이디를 입력 해 주세요.");
		$("#signup_id").focus();
		return false;
	}
	if(!getCheck.test($("#signup_id").val())){
		alert("아이디는 영문, 숫자 최소 4글자에서 최대12글자 입니다.");
		$("#signup_id").val("");
		$("#signup_id").focus();
		return false;
	}
	
	if($("#signup_pw").val() == ""){
		alert("비밀번호를 입력 해 주세요.");
		$("#signup_pw").focus();
		return false;
	}
	if(!getCheck.test($("#signup_pw").val())){
		alert("비밀번호는 영문, 숫자 최소 4글자에서 최대12글자 입니다.");
		$("#signup_pw").val("");
		$("#signup_pw").focus();
		return false;
	}
	
	if($("#signup_name").val() == ""){
		alert("이름을 입력 해 주세요.");
		$("#signup_name").focus();
		return false;
	}
	if(!getName.test($("#signup_name").val())){
		alert("한글을 사랑합시다. ㅡㅡ");
		$("#signup_name").val("");
		$("#signup_name").focus();
		return false;
	}
	
	if($("#signup_phone").val() == ""){
		alert("휴대폰번호를 입력 해 주세요.");
		$("#signup_phone").focus();
		return false;
	}
	if(!getPhone.test($("#signup_phone").val())){
		alert("숫자 또는 - 를 포함한 숫자만 입력 해 주세요.");
		$("#signup_phone").val("");
		$("#signup_phone").focus();
		return false;
	}
	
	if($("#signup_age").val() == ""){
		alert("나이를 입력 해 주세요.");
		$("#signup_age").focus();
		return false;
	}
	if(!getAge.test($("#signup_age").val())){
		alert("나이는 숫자만 입력 해 주세요.");
		$("#signup_age").val("");
		$("#signup_age").focus();
		return false;
	}
	
	alert("회원가입 완료. 로그인 해 주세요");
	signform.action = "/dev/sign_form.do";
	signform.submit();
}
