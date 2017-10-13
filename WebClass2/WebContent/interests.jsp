
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
       <h1>좋아하는 음식</h1>
       <br><br>
       <h4>햄버거</h4>
       <br>
       <img src="image/hmb1.jpg" class="img-rounded" alt="Cinque Terre" width="600" height="400">
       <br><br>
       <p>햄버거(hamburger)는 쇠고기를 갈아 납작하게 만든 패티(patty)를 그릴이나 직화로 구워 여러 채소와 함께 빵 사이에 끼워 먹는 샌드위치의 일종으로 미국 내에서 선호도가 높은 음식 중 하나이다. 햄버거를 언제부터 먹기 시작했는지는 명확하게 알려진 기록이 없으며, 오늘날의 형태의 햄버거를 먹기 시작한 것은 여러 가지 설이 있지만 대략 1880년 이후로 추정된다. 취향에 따라 양상추, 토마토, 양파, 치즈, 피클 등을 빵 사이에 함께 끼워 넣고 토마토 케첩, 마요네즈, 머스터드 등의 소스를 바르기도 한다. 탄산음료나 감자튀김을 곁들여 먹는 미국의 대표적인 패스트푸드(fast food)이다.</p>
       
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
