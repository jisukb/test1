<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>우리동네</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="../css/common.css">
<script type="text/javascript" src="../js/page.js"></script>
</head>
<body>
<header id="header"></header>
<div class="wrap">
<img src="../images/20180515_203804.jpg" class="img-fluid width:100%;"
style="filter:alpha(opacity=60); opacity:0.6; -moz-opacity:0.6;">
  <div class="text-group">
    <p style="font-size: 50px;">펫토피아</p>
    <p style="font-size: 30px;">우리 동네 친구 찾기</p>
    <p>동네 커뮤니티로 정보를 나누고, 수다 떨며<br>
    같이 산책할 내 반려동물의 친구를 사귀어 보세요</p> 
  </div>
</div>

<div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<a class="navbar-brand">우리 동네 찾기</a>
</nav>
<form action='list' method='get'>
    광역시/도 : <select name='stateNo'>
      <c:forEach items="${smallAddresses}" var="s">
        <option value='${s.bigAddress.no}' ${s.bigAddress.no == smallAddress.bigAddress.no ? "selected" : ""}>${s.bigAddress.name}</option>
      </c:forEach>
    </select> 시/군/구 : <select name='cityNo'>
      <c:forEach items="${smallAddresses}" var="s">
        <option value='${s.no}' ${s.no == smallAddress.no ? "selected" : ""}>${s.name}</option>
      </c:forEach>
    </select> <input type='submit' value='찾기'>
  </form>
</div>

<footer id="footer"></footer>
</body>
</html>