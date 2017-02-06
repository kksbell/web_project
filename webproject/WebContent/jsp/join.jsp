<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
</head>
<body>
<form name="form" action="<%=request.getContextPath() %>/join.do" method="post">
아이디 <input name="id"/><br/>
비번 <input name="pwd" type="password"/><br/>
닉네임 <input name="nickname"/><br/><br/>
<input type="submit" value="가입"/>
</form>

</body>
</html>