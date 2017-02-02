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


<div id="all">
 <div id="left" > 
	<div>
       <a href="./index.jsp" onfocus="this.blur()">
         <img src="./images/logo.PNG" width="250" border="0" />
     	</a>
     </div>
     
     <br><br>
     <div id="login" align="center">
     	<b>아이디: <input type="text" size="24"><br>
     	비밀번호 :<input type="password" size="23"></b><br><br>

     	<div>
         	<img src="./images/login.PNG" width="70" height="30" border="0" />
         	<img src="./images/pwd.PNG" width="70" height="30" border="0" />
         	<img src="./images/sign.PNG" width="70" height="30" border="0" />
     	</div>     	
     </div>
     <br><br>
     
     <div id="name">
     <b>&nbsp;&nbsp;포켓몬 이름</b><br>
     <!-- <div >
         	<img src="./images/001.PNG" width="160" height="160" class="img1"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         	<img src="./images/002.PNG" width="160" height="160" class="img1" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         	<img src="./images/003.PNG" width="160" height="160" class="img1" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         	<img src="./images/004.PNG" width="160" height="160" class="img1" />
     	</div><br> 
     	<div>
         	<img src="./images/005.PNG" width="160" height="160" class="img1" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         	<img src="./images/006.PNG" width="160" height="160" class="img1" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         	<img src="./images/007.PNG" width="160" height="160" class="img1" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         	<img src="./images/008.PNG" width="160" height="160" class="img1" />
     	</div> -->
	 </div>
	 
	 
	  <div id="name">
     <b>&nbsp;&nbsp;정렬</b><br>
     
	 </div>
	 
</div>
<div id="right">

    <table>
    	<tr>
         	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/001_001.png" width="150" height="150" /></td>
           	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/002_002.png" width="150" height="150" /></td>
            <td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/003_003.png" width="150" height="150" /></td>
           	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/004_003.png" width="150" height="150" /></td>
     	
       
        </tr>
        <tr align="center"> 	
         	<td><b>No.001 이상해씨</b></td>
         	<td><b>No.002 이상해씨</b></td>
         	<td><b>No.003 이상해씨</b></td>
         	<td><b>No.004 이상해씨</b></td>        	
        </tr> 
 
         <tr>
         	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/005_004.png" width="150" height="100" /></td>
           	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/006_005.png" width="150" height="100" /></td>
            <td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/007_006_01.png" width="150" height="100" /></td>
           	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/008_006_02.png" width="150" height="100" /></td>
     	
       
        </tr>
        <tr align="center"> 	
         	<td><b>No.005 이상해씨</b></td>
         	<td><b>No.006 이상해씨</b></td>
         	<td><b>No.007 이상해씨</b></td>
         	<td><b>No.008 이상해씨</b></td>        	
        </tr> 

       <tr>
         	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/009_006_03.png" width="150" height="100" /></td>
           	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/010_007.png" width="150" height="100" /></td>
            <td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/011_008.png" width="150" height="100" /></td>
           	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/012_009_01.png" width="150" height="100" /></td>
     	
       
        </tr>
        <tr align="center"> 	
         	<td><b>No.009 이상해씨</b></td>
         	<td><b>No.010 이상해씨</b></td>
         	<td><b>No.011 이상해씨</b></td>
         	<td><b>No.012 이상해씨</b></td>          	
        </tr> 
        
       <tr>
         	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/017_013.png" width="150" height="100" /></td>
           	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/018_014.png" width="150" height="100" /></td>
            <td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/019_015_01.png" width="150" height="100" /></td>
           	<td><img src="http://pokedex.pokemonkorea.co.kr/templates/default/images/MonImages/middle/837_015_02.png" width="150" height="100" /></td>
     	
       
        </tr>
        <tr align="center"> 	
         	<td><b>No.013 이상해씨</b></td>
         	<td><b>No.014 이상해씨</b></td>
         	<td><b>No.015 이상해씨</b></td>
         	<td><b>No.016 이상해씨</b></td>        	
        </tr> 
        
        </table>
    
</div>
         

 </div> 


</body>
</html>