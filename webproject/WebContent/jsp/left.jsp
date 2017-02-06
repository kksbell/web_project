<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div id="left" > 
	<div>
       <a href="./index.jsp" onfocus="this.blur()">
         <img src="./images/logo.PNG" width="250" border="0" />
     	</a>
     </div>
     
     <br><br>
     <% if(session.getAttribute("id")!=null){
    	 %>
    	 안녕하세요, <%=session.getAttribute("nickname") %> 님!
    	 <br/>
    	 마이페이지<br/>
    	 <a href="logout.do">로그아웃</a>
    	 <%
     }else{%>
     <form name="login" id="frm" method="post" action="login.do">
     <div id="login" align="center">
     	<b>아이디: <input name="id" type="text" size="24"><br>
     	비밀번호 :<input name="pwd" type="password" size="23"></b><br><br>

     	<div>
         	<img src="./images/login.PNG" width="70" height="30" border="0" 
         	onclick="document.getElementById('frm').submit()"/>
         	<img src="./images/pwd.PNG" width="70" height="30" border="0" 
         	/>
         	<img src="./images/sign.PNG" width="70" height="30" border="0" 
         	onclick="window.open('jsp/join.jsp', '얍', 'width=200, height=200')"/>
     	</div>     	
     </div>
     <br><br>
     </form>
     <%} %>
     <div id="name">
     <b>포켓몬 이름</b><br>
          <div >
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_01.png" />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_02.png" />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_03.png" />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_04.png" />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_05.png" />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_06.png" />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_07.png" />
     </div>
     <div>
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_08.png" />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_09.png" />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_10.png"  />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_11.png"  />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_12.png"  />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_13.png"  />
         	<img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/btn_name_14.png"  />
     </div>
	 </div>
	 
	 
	  <div id="name">
     <b>정렬</b><br>
     
	 </div>
	 
</div>