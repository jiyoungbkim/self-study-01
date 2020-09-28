/**
 * 
 */
function check_ok(){
	if(document.form.name.value.length == 0){
		alert("이름 입력해주세요.");
		document.form.name.focus();
		return false;
	} else if(document.form.s_num1.value.length != 6){
		alert("주민번호 6자리입니다.")
		document.form.s_num1.focus();
		return false;
	} else if(document.form.s_num2.value.length != 7){
		alert("주민번호 7자리입니다.")
		document.form.s_num2.focus();
		return false;
	} else if(document.form.id.value.length < 5){
		alert("아이디는 5글자 이상입니.");
		document.form.id.focus();
		return false;
	} else if(document.form.pwd.value == ""){
		alert("비밀번호는 반드시 입력해주세요");
		document.form.pwd.focus();
		return false;
	} else if(document.form.pwd.value != document.form.pwd_re.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.form.pwd_re.focus();
		return false;
	}	
}