<%@page import="java.util.List"%>
<%@page import="com.index.model.IndexDTO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>포켓몬도감</title>
<link rel="stylesheet" type="text/css" href="./css/index.css" />

<%
int listcount=(Integer)request.getAttribute("listcount");
int nowpage=(Integer)request.getAttribute("page");
int maxpage=(Integer)request.getAttribute("maxpage");
int startpage=(Integer)request.getAttribute("startpage");
int endpage=(Integer)request.getAttribute("endpage");
%>
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
		    boolean flag=false;
		    for(int i=0; i<list.size(); i++){
		    	IndexDTO dto = list.get(i);
		    	if(i%4==0){
		    		 %>
		    		 <tr>
		    		 <%
		    	 }
		    	%>
		    	
				<td><a href=""><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/<%=dto.getPPICTURE() %>" width="150" height="150" /></a><br>
    				<b id="name"><%=dto.getPNAME()%></b></td>
		
		    	 <%
		    	 
		    }
          }else{
          %>
         <tr>
            <td colspan="5"> 없음</td>
         </tr>
          <% } %>
          <tr>
		<td colspan=5>
			<% if(nowpage <=1 ){ %>
			<!-- 1페이지 이하이면 링크 없음 -->			
			 [이전]&nbsp;
			<% }else{ %>
			<!-- 2페이지 이상이면 링크 -->
			<a href="<%=request.getContextPath()%>/index.do?page=<%=nowpage-1 %>">[이전]</a>&nbsp;
			<%} %>
			
			<% for(int i=startpage; i<=endpage; i++){
				// 현재 페이지 링크 없음 
				if(i==nowpage){%>
				[<%= i %>]
				<% }else{ %>
				<!-- 현재 페이지를 제외한 나머지 페이지 링크 : 클릭 시 이전 페이지 번호 넘김-->
				<a href="<%=request.getContextPath()%>/index.do?page=<%= i %>">[<%= i %>]</a>&nbsp;
				<%} %>
			<%} %>
			
			<% if(nowpage >= maxpage){ %>
			<!-- 현재 페이지가 마지막인 경우 링크 없음 -->			
			 [다음]&nbsp;
			<% }else{ %>
			<!-- 마지막 페이지가 아니면 링크 : 클릭 시 다음 페이지 번호 넘김-->
			<a href="<%=request.getContextPath()%>/index.do?page=<%= nowpage+1 %>">[다음]</a>
			<% } %>
		</td>
	</tr>
        </table>

</body>
</html>