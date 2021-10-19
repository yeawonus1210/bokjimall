<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>정말로 회원 탈퇴 하시겠습니까???</h1>
	${ vo.getUserid }
	<form method="post" id="cInput">
	<label>탈퇴할 아이디를 입력해주세요 : </label>
	<input type="text" name="userid">
	<br>
	<br>
	<input type="submit" value="예" onclick="check()">
	<input type="button" value="아니오" onclick="check()">
	</form>
	
</body>
</html>