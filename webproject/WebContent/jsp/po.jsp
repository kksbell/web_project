<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.pokemon.model.*" %>
<%@ page import="java.util.*" %>
<!-- 외부 패키지 임포트 -->
<% %>
<head>
<link href="../css/po.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<%
  PokemonBean pokemon = (PokemonBean)request.getAttribute("bean");
%> 
<div id="po_wrap">
  <form action="<%=request.getContextPath()%>/pokemon_cont.do" method="post">
  <div id="po_title">
  	<p> <h2 id="po_title1">  이상이상 </h2>
  
  </div>
  
  <div id="po_content">
  	<div id="po_content_left">
  		<img src="../images/001_001b.png">
  	</div>
  	<div id="po_content_right">
  	  <div id="po_content_right_01">
  	    
  	    <ul>
  	      <li> 키 </li>
  	      <li> <%=pokemon.getPHEIGHT()%> </li>
  	    </ul>
  	    <ul>
  	      <li> 타입 </li>
  	      <li> <%=pokemon.getPTYPE() %> </li>
  	      <li> <%=pokemon.getPTYPE2() %> </li>
  	    </ul>
  	    <ul>
  	      <li> 몸무게 </li>
  	      <li> <%=pokemon.getPWEIGHT()%> </li>
  	    </ul>  
  	    <ul>
  	      <li> 특성 </li>
  	      <li><%=pokemon.getPFEATURE() %></li>
  	      <li><%=pokemon.getPFEATURE_H() %></li>
  	    </ul>
  	  </div>
  	  <div id="po_content_right_02">
  	  	<h6>진화</h6>
  	  	  <table>
  	  	    <tr> 
  	  	   	  <td> <img src="../images/001_001s.png"> </td>
  	  	      <td> <img src="../images/001_001s.png"> </td>
  	  	      <td> <img src="../images/001_001s.png"> </td>
  	  	  	</tr>
  	  	  </table>
  	  </div>
  	  <div id="po_content_right_03">
  	  	<table id="po_content_right_03_01" width="70%" height="100%" >
  	  		<tr>
  	  		  <td>
  	  		    <input type="text">
  	  		  </td>
  	  		</tr>
  	  	</table>
  	  </div>
  	  
  	</div>  
  </div>
  </form>
</div>
</body>