<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #FFADAD;">
  <div class="container-fluid">
    <a class="navbar-brand-main" href="../main"><img src="../../images/Petopia.png"></a>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../hospital/list">병원찾기</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../sharingmarketboard/list">나눔장터</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../story/list">스토리</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../mytown/main">우리동네</a>
        </li>
      </ul>
        <c:if test="${empty loginUser}">
        <div class="d-flex justify-content-between">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="../login_form">로그인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="../member/add">회원가입</a>
            </li>
          </ul>
        </div>
        </c:if>
        <c:if test="${not empty loginUser}">
        <div class="d-flex justify-content-between">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="../logout">로그아웃</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="../mypage/main">마이페이지</a>
            </li>
          </ul>
        </div>
        </c:if>
  </div>
</nav>