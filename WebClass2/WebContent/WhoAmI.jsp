<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVo" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/footer.css">
<style>
div.container {
  padding-top: 30px;
  padding-bottom: 20px;
}
</style>

<script>
function menu_over(e) {
	e.setAttribute("class", "nav-item active");
}
function menu_out(e) {
	e.setAttribute("class", "nav-item");
}
</script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  	<%@ include file="menu.jsp" %>
  	
    <%-- 세션이 없는 경우 --%>
    <%
    UserVo user = (UserVo)(session.getAttribute("user"));
    if(user==null) {
    %>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass2/login.jsp">Sign in</a>
    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass2/signup2.jsp">Sign up</a>
    	</div>
    	</nav>
    	<%} else { %>
    <%-- 세션이 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%=user.getName() %>님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      <form action="/WebClass2/logout" method = "get">
	      	<button type="submit" class="dropdown-item">Sign out</button>
	       	</form><div class="dropdown-divider"></div>
	        <button type="button" class="dropdown-item">Action1</button>
	        <button type="button" class="dropdown-item">Action2</button>
	      </div>
	    </li>
	    </ul>
	    </div>
    	</nav>
	    <%} %>
  </div>
</nav>
<div class="container">
       <h1>존경하는 인물</h1>
       <br><br>
       <h2>이순신</h2>
       <br>
       <h4>출생</h4>
       <p>본관은 덕수(德水)이고, 자는 여해(汝諧), 시호는 충무(忠武)이다. 1545년(인종 1) 4월 28일(음력 3월 8일) 한성부(漢城府) 건천동(乾川洞, 현재 인현동)에서 이정(李貞)과 초계 변씨(草溪卞氏)와의 사이에서 셋째아들로 태어났다. 보성군수 등을 지낸 방진(方震)의 딸인 상주 방씨(尙州方氏)와 결혼하여 3남 1녀를 두었으며, 이 밖에 해주 오씨(海州 吳氏)와의 사이에 2남 2녀가 있었다.</p>
       <br>
       <h4>무과급제와 함경도 근무</h4>
       <p>1572년(선조 5) 훈련원(訓鍊院) 별과(別科)에 응시했으나 말에서 떨어져 왼쪽다리가 부러지는 바람에 탈락하였다. 그래서 30세가 넘은 1576년(선조 9)에야 식년시(式年試) 무과(武科)에 병과(丙科)로 급제해 관직에 나섰다. 권지훈련원봉사(權知訓練院奉事)와 함경도의 동구비보(董仇非堡) 권관(權管), 발포수군(鉢浦水軍) 만호(萬戶) 등을 거쳐 건원보(乾原堡) 권관, 훈련원(訓鍊院) 참군(參軍)을 지냈다. 하지만 1583년(선조 16)에 부친상을 당해 관직에서 물러났다. 부친상을 마치고 1586년(선조 19) 사복시(司僕寺) 주부(主簿)로 다시 관직에 나서, 곧바로 함경도 조산보(造山堡) 만호(萬戶)로 임명되었다. 하지만 이듬해 녹둔도(鹿屯島)의 둔전(屯田)을 관리하다가 여진족의 습격을 당해 피해를 입으면서 경흥부사(慶興府使) 이경록(李慶祿)과 함께 감옥에 갇혔다. 당시 이순신의 병력 증원 요청을 병사 이일(李鎰)이 무시해서 벌어진 일이었으나, 이순신은 패전의 책임으로 장형(杖刑)을 당한 뒤에 백의종군하게 되었다.  </p>
       <br>
       <h4>임진왜란과 해전</h4>
       <p>1592년 임진왜란(壬辰倭亂)이 일어나자 경상우수사 원균(元均)의 요청을 받아 경상도 해역으로 출정해 왜군과의 해전에서 잇따라 승리를 거두었다. 6월 16일(음력 5월 7일) 옥포(玉浦)와 합포(合浦)에서 왜선 30여척을 격파하는 큰 승리를 거두었고(옥포해전), 다음날에도 적진포(赤珍浦)에서 10여척의 왜선을 격파하였다(적진포해전). 이 전투들에서의 승리로 조선 수군은 왜군과의 해전에서 자신감을 가지게 되었으며, 이러한 공으로 이순신은 종2품 가선대부(家善大夫)로 승진했다. 7월 8일(음력 5월 29일)에는 경상우수사 원균과 합류해 사천(泗川)에서 서해로 북상하려던 왜선 13척을 모두 격침시켰다(사천해전). 이 전투에서는 거북선이 처음으로 실전에 배치되었다. 7월 10일(음력 6월 2일)에는 당포(唐浦)에서 왜선 21척을 불태웠으며(당포해전), 7월 13일(음력 6월 5일)에는 왜군이 도주해 진을 치고 있는 당항포(唐項浦)를 공격해서 왜선 26척을 격침시켰다(제1차 당항포해전). 이러한 잇따른 승리로 이순신은 정2품 자헌대부(資憲大夫)가 되었다.</p>
              
    </div>



        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery.min.js"><\/script>')</script>
        <script src="../../../../assets/js/vendor/popper.min.js"></script>
        <script src="../../../../dist/js/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../../../../assets/js/ie10-viewport-bug-workaround.js"></script>
        <script src="offcanvas.js"></script>
      </body>
    </html>
