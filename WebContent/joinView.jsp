<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String s_num1 = (String)request.getParameter("s_num1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 </title>
<style type="text/css">
label {
	width:160px;
	display: inline-block;
	float: left;
}e
#button{
	text-align: center;
}
input[type="text"] {
	border : none;
}
</style> 
</head>
<body>
<script type="text/javascript" src="param.js"></script>
<form name="form" method="post" action="JoinServlet">
	<label for="name"> 이름 </label> &nbsp;&nbsp;
    <input type="text" id="name" name="name" value="${name}"readonly> <br>
    
    <label for="socialnumber"> 주민등록번호 </label> &nbsp;&nbsp;
    <input type="text" id="s_num1" name="s_num1" value="<%=s_num1%>" readonly> -
    <input type="text" id="s_num2" name="s_num2" value="${s_num2}" readonly> <br>
    
    <label for="id"> 아이디 </label> &nbsp;&nbsp;
    <input type="text" id="id" name="id" value="${id}" readonly> <br>
    
	<label for="password"> 비밀번호 </label> &nbsp;&nbsp;
	<input type="password" id="pwd" name="pwd"> <br>
	<label for="password"> 비밀번호 확인 </label> &nbsp;&nbsp;
	<input type="password" id="pwd_re" name="pwd_re"> <br>
	
	<label for="email"> 이메일 </label> &nbsp;&nbsp;
    <input type="text" id="email" name="email" value="${email}" readonly> @
    <input type="text" id="email_dns" name="email2" value="${email2}" readonly >
    <select name="emailaddr">
        <option value="">직접입력</option>
        <option value="daum.net">daum.net</option>
        <option value="empal.com">empal.com</option>
        <option value="gmail.com">gmail.com</option>
        <option value="hanmail.net">hanmail.net</option>
        <option value="msn.com">msn.com</option>
        <option value="naver.com">naver.com</option>
        <option value="nate.com" selected="selected">nate.com</option>                
    </select><br>
    
    <label for="zip"> 우편번호 </label> &nbsp;&nbsp;
    <input type="text" id="zip" name="zip"> <br>
    
    <label for="addr"> 주소 </label> &nbsp;&nbsp;
    <input type="text" id="addr" name="addr">
    <input type="text" id="addr2" name="addr2"> <br>
    
    <label for="phone">핸드폰번호</label>  &nbsp;&nbsp;
    <input type="tel" id="phone" name="phone"><br>
    
    <label for="job">직업</label>  &nbsp;&nbsp;
    <select id="job" name="job" size="3">  
       <option value="학생">학생</option> 
       <option value="컴퓨터/인터넷">컴퓨터/인터넷</option> 
       <option value="언론">언론</option> 
       <option value="공무원" selected="selected">공무원</option> 
       <option value="군인">군인</option> 
       <option value="서비스업">서비스업</option> 
       <option value="교육">교육</option> 
    </select><br>

    <label for="chk_mail">메일/SMS 정보 수신</label>  &nbsp;&nbsp;
    <input type="radio" id="chk_mail" name="chk_mail" checked> 수신 
    <input type="radio" id="chk_mail" name="chk_mail"> 수신거부<br>

    <label for="interest">관심분야</label>  &nbsp;&nbsp;
      <input type="checkbox" id="interest" name="interest" value="생두"> 생두         
      <input type="checkbox" id="interest" name="interest" value="원두" checked> 원두         
      <input type="checkbox" id="interest" name="interest" value="로스팅"> 로스팅         
      <input type="checkbox" id="interest" name="interest" value="핸드드립" checked> 핸드드립         
      <input type="checkbox" id="interest" name="interest" value="에스프레소" checked> 에스프레소         
      <input type="checkbox" id="interest" name="interest" value="창업"> 창업<br><br>
    
 <div id="button">
    <input type="submit" value="회원가입" onclick="return check_ok()">
    <input type="reset" value="취소">
</div>    
</form>
</body>
</html>