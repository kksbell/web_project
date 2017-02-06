<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이 페이지</title>
</head>
<body>
<%@ include file="./left.jsp" %>
<% String nickname = (String)session.getAttribute("nickname");%>
<hr>
<h3>내 포켓몬</h3>
<div id="myp"><img src=""></div>
<hr>

<h3>내가 올린 제보</h3>
<table>
 <tr>
  <th>포켓몬</th>
  <th>지역</th>
  <th>일시</th>
 </tr>
 <tr>
  <td>테스트</td>
  <td>에이콘</td>
  <td>바로지금</td>
</table>
</body>
</html>