<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf"%>
</head>
<body>
<div class="jumbotron">
  <div class="container text-center">
    <h1>KOOK CINEMA</h1>
    <p>org.kook.movie</p>
  </div>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <!-- <a class="navbar-brand" href="#">Logo</a> -->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li id="ticketing"><a href="#this">영화예매</a></li>
        <li><a href="#this">영화평점</a></li>
        <li><a href="#this">게시판</a></li>
        <li><a href="#this">찾아오시는 길</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> 개인정보</a></li>
        <!-- <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li> -->
      </ul>
    </div>
  </div>
</nav>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">아수라</div>
        <div class="panel-body"><img src="./image/asura.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">이 달의 화제작</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">미스 페레그린과 이상한 집의 아이들</div>
        <div class="panel-body"><img src="./image/peregrine.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">꿀잼 ! 강추 !</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-success">
        <div class="panel-heading">브리짓 존슨의 베이비</div>
        <div class="panel-body"><img src="./image/baby.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">브리짓 존슨이 돌아왔다!!</div>
      </div>
    </div>
  </div>
</div><br>

<br><br>

<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript">
        var gfv_count = 1;
     
        $(document).ready(function(){
            $("#ticketing").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openTicketing();
            });
             
        });
         
        function fn_openTicketing(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='openTicketing.do' />");
            comSubmit.submit();
        }
         
    </script>
    
</body>
</html>
