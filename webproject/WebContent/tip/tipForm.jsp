<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>제보하기</title>

<!-- 나중에 파일 따로 빼기 -->
<!-- css -->
<style>
div{
	text-align:center;
}
img{
	width:200px;
	height:200px;
}
</style>

<!-- script -->
<script>
	function dataCheck(){
		//alert("");
		if(document.getElementById("ID").value==""){
			alert("제보자 아이디를 입력하세요");
			document.getElementById("ID").focus();
			return false;
		}
		if(document.getElementById("pno").value==""){
			alert("포켓몬 번호를 입력하세요");
			document.getElementById("pname").focus();
			return false;
		}
		if(document.getElementById("location").value==""){
			alert("발견 장소를 입력하세요");
			document.getElementById("location").focus();
			return false;
		}
		
	}
</script>

</head>
<body>
	<form onsubmit="return dataCheck();"method="post" enctype="multipart/form-data" action="<%=request.getContextPath()%>/tipAdd.do">
		<div class="top_area">
			<table align="center">
				<tr>
					<td>제보자 ID(로그인 되있으면 상관없지않나?)</td>
					<td><input type="text" id="ID" name="ID"/></td>
				</tr>
				<tr>
					<td>포켓몬 번호</td>
					<td><input type="text" id="pno" name="pno"/></td>
				</tr>
			</table>
		</div>
		<div class="mid_area">
			<img src="#"/><br>
			<input type="file" name="sshot"/><br>
			출몰지역(or 발견한 장소) : <input type="text" id="location" name="location"/><br>
			<textarea name="tip">꿀팁!</textarea>
		</div>
		<div class="bottom_area">
			<input type="submit" value="제보"/>
		</div>
	</form>
</body>
</html>