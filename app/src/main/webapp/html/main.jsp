<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫토피아</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/layout.css">
</head>
<body>
<header id="header"></header>
<div class="wrap">
<img src="../images/20180115_121333.jpg" class="img-fluid width:100%;"
style="filter:alpha(opacity=60); opacity:0.6; -moz-opacity:0.6;">
  <div class="text-group">
    <p style="font-size: 50px;">펫토피아</p>
    <p style="font-size: 30px;">우리 아이들의 이야기</p>
    <p>동네 커뮤니티로 정보를 나누고, 수다 떨며<br>
    같이 산책할 내 반려동물의 친구를 사귀어 보세요</p> 
  </div>
</div>

<div class="container">
    <div class="box1">
    <div class="pagination">
        <div class="pagination_item01">
           시/도
        </div>
        <div class="pagination_item02">
           <select class="gno" name='gno'>
           <option value=''>서울특별시</option>
           </select>
        </div>
        <div class="pagination_item03">
           시/군/구
        </div>
        <div class="pagination_item04">
           <select class="cno" name='cno'>
           <option value=''>강남구</option>
           </select>
        </div>
        <div class="pagination_item05">
           <input type="button" class="img-search-btn">
        </div>
    </div>
    </div>
    
    <div class="box2">
      <div class="container_navleft01">
      <nav class="navbar navbar-expand-lg navbar-light">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../pet/list"><img src="../images/pawprintfull.png"> 마이펫</a>
        </li>
      </ul>
      </nav>
      </div>
      <div class="container_navright01">
      <nav class="navbar navbar-expand-lg navbar-light">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../record/list"><img src="../images/pawprintfull.png"> 진찰기록</a>
        </li>
      </ul>
      </nav>
      </div>
    </div>
    
    <div class="box3">
      <div class="container_left01">
        <div class="img-mypet">
          <img class="mypetpic" src="../images/20180111_205149.jpg">
        </div>
        <p>name: eeee<br>age: eeee<br>eeeeeddddd
        </p>
      </div>
      
      <div class="container_right01">
      <div class="timeline">
        <div class="timeline_line"></div>
        <ul class="timeline_items">
            <li class="timeline_item">
                <div class="timeline_top">
                    <div class="timeline_circle"></div>
                    <div class="timeline_title">
                    ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
                    </div>
                </div>
                <div class="timeline_desc">
                2020.02.22
                </div>
            </li>
            <li class="timeline_item">
                <div class="timeline_top">
                    <div class="timeline_circle"></div>
                    <div class="timeline_title">
                    ㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴㄴ
                    </div>
                </div>
                <div class="timeline_desc">
                2021.02.22
                </div>
            </li>
            <li class="timeline_item">
                <div class="timeline_top">
                    <div class="timeline_circle"></div>
                    <div class="timeline_title">
                    ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ
                    </div>
                </div>
                <div class="timeline_desc">
                2020.12.22
                </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    
    <div class="box4">
    <nav class="navbar navbar-expand-lg navbar-light">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../sharingmarketboard/list"><img src="../images/pawprintfull.png"> 나눔장터</a>
        </li>
      </ul>
    </nav>
    </div>
    
    <div class="box5">
      <div class="market">
        <div class="market_column">
          <a href=""><img src="../images/20180111_205149.jpg" style="width: 200px; height: 250px;"></a>
          <p class="market_contents">dkdkdksssssssssssssssssssssssssssssssssss</p>
        </div>
        <div class="market_column">
          <a href=""><img src="../images/20180111_205149.jpg" style="width: 200px; height: 250px;"></a>
          <p class="market_contents">dkdkdkssssssssssssssssssss</p>
        </div>
        <div class="market_column">
          <a href=""><img src="../images/20180111_205149.jpg" style="width: 200px; height: 250px;"></a>
          <p class="market_contents">dkdkdkssssssssssssssssssssssssss</p>
        </div>
        <div class="market_column">
          <a href=""><img src="../images/20180111_205149.jpg" style="width: 200px; height: 250px;"></a>
          <p class="market_contents">dkdkdksssssssssssssss</p>
        </div>
     </div>
     </div>
    
    <div class="box6">
      <div class="container_navleft02">
      <nav class="navbar navbar-expand-lg navbar-light">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../story/list"><img src="../images/pawprintfull.png"> 스토리</a>
        </li>
      </ul>
      </nav>
      </div>
      <div class="container_navright02">
      <nav class="navbar navbar-expand-lg navbar-light">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../mytown/list"><img src="../images/pawprintfull.png"> 우리동네</a>
        </li>
      </ul>
      </nav>    
      </div>
    </div>
    
    <div class="box7">
      <div class="container_left02">
      스토리
      </div>
      
      <div class="container_right02">
      커뮤
      </div>
    </div>
</div>

<footer id="footer"></footer>
</body>
</html>