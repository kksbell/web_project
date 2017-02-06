<%@page import="java.util.List"%>
<%@page import="com.index.model.IndexDTO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>포켓몬도감</title>
<link rel="stylesheet" type="text/css" href="./css/index.css" />


<script src="./js/jquery-3.js"></script>

</head>
<body>
<%@ include file="./jsp/left.jsp" %>
<% // 컨트롤러에서 넘긴 키값을 받는다.
List<IndexDTO> list=(List<IndexDTO>)request.getAttribute("LIST");

 if((list != null) && (list.size()>0 )){
	// 게시판의 목록이 1개 이상 존재하는 경우 조건은 참이 된다.
	

%>

    <table>
    <%
    for(int i=0; i<list.size(); i++){
    	IndexDTO dto = list.get(i);
    	%><tr>
    	<%
    	for(int j=0;j<5;j++){
		
		// 컬렉션 요소값을 BoardBean 타입으로 가져온다.
    %>

    		<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/<%=dto.getPPICTURE() %>" width="150" height="150" /><br>
    		<b id="name"><%=dto.getPNAME()%></b></td>
      
        <%
        	} // for end
    	 %></tr> <br><%
    }
          }else{
          %>
         <tr>
            <td colspan="5"> 없음</td>
         </tr>
          <% } %>
        </table>

</body>
</html>