function signinCheck(){
	
	var loginform = document.login_form;
	var loginCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/);
	
	if($("#id").val() == ""){
		alert("아이디를 입력 해 주세요.");
		$("#id").focus();
		return false;
	}
	if(!loginCheck.test($("#id").val())){
		alert("아이디는 영문, 숫자 최소 4글자에서 최대12글자 입니다.");
		$("#id").val("");
		$("#id").focus();
		return false;
	}
	
	if($("#password").val() == ""){
		alert("비밀번호를 입력 해 주세요.");
		$("#password").focus();
		return false;
	}
	if(!loginCheck.test($("#password").val())){
		alert("비밀번호는 영문, 숫자 최소 4글자에서 최대12글자 입니다.");
		$("#password").val("");
		$("#password").focus();
		return false;
	}
	
	
	//alert("로그인 하였습니다.");
	loginform.action = "/dev/login_form.do";
	loginform.submit();
}


