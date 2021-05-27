<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>병원 상세</title>
</head>
<body>
	<h1>병원 상세보기</h1>
	<c:if test="${not empty hospital}">
		<c:if test="${not empty hospital.photo}">
			<c:set var="photo300x300Url">../upload/${hospital.photo}_300x300.jpg</c:set>
			<c:set var="photoUrl">../upload/${hospital.photo}</c:set>
		</c:if>
		<c:if test="${empty hospital.photo}">
			<c:set var="photo300x300Url">../images/person_80x80.jpg</c:set>
			<c:set var="photoUrl"></c:set>
		</c:if>

		<form action='update' method='post' enctype='multipart/form-data'>
			<table border='1'>
				<tbody>
					<tr>
						<th>번호</th>
						<td><input type='text' name='no' value='${hospital.no}'
							readonly></td>
					</tr>
					<tr>
						<th>병원이름</th>
						<td><input type='text' name='name' value='${hospital.name}'></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type='tel' name='tel' value='${hospital.tel}'></td>
					</tr>
					<tr>
						<th>기본주소</th>
						<td><select name='gno'><option value=''>분류</option>
								<option value='1'
									${hospital.bigAddress.no == 1 ? "selected" : ""}>서울특별시</option>
								<option value='2'
									${hospital.bigAddress.no == 2 ? "selected" : ""}>경기도</option>
								<option value='3'
									${hospital.bigAddress.no == 3 ? "selected" : ""}>인천광역시</option></select>
							<select name='cno'><option value=''>분류</option>
								<optgroup label='서울특별시'>
									<option value='1'
										${hospital.smallAddress.no == 1 ? "selected" : ""}>강남구</option>
								</optgroup>
								<optgroup label='경기도'>
									<option value='2'
										${hospital.smallAddress.no == 2 ? "selected" : ""}>김포시</option>
								</optgroup>
								<optgroup label='인천광역시'>
									<option value='3'
										${hospital.smallAddress.no == 3 ? "selected" : ""}>중구</option>
								</optgroup></select></td>
					</tr>
					<tr>
						<th>상세주소</th>
						<td><input type='text' name='address'
							value='${hospital.address}'></td>
					</tr>
					<tr>
						<th>진료시간</th>
						<td><input type='number' name='startTime'
							value='${hospital.startTime}'> <input type='number'
							name='endTime' value='${hospital.endTime}'></td>
					</tr>
					<tr>
						<th>주차여부</th>
						<td><input type='radio' name='parking' value='1'
							${hospital.parking == 1 ? "checked" : ""}>Yes <input
							type='radio' name='parking' value='0'
							${hospital.parking == 0 ? "checked" : ""}>No</td>
					</tr>
					<tr>
						<th>수의사</th>
						<td><input type='number' name='vet'
							value='${hospital.veterinarian}'></td>
					</tr>
					<tr>
						<th>사진</th>
						<td><a href='${photoUrl}'> <img src='${photo300x300Url}'></a><br>
							<input name='photo' type='file'></td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan='2'><input type='submit' value='변경'> 
						<a href='delete?no=${hospital.no}'>삭제</a></td>
					</tr>
				</tfoot>
			</table>
		</form>
	</c:if>

	<c:if test="${not empty loginUser and empty bookmark}">
		<form action="../member/bookmarkadd" method="post">
			<input type="hidden" name="mno" value="${loginUser.no}"> <input
				type="hidden" name="hno" value="${hospital.no}"> <input
				type="hidden" name="hiddenNo" value="0"> <input
				type="submit" value="☆">
		</form>
	</c:if>

	<c:if test="${not empty loginUser and not empty bookmark}">
		<form action="../member/bookmarkdelete">
			<input type="hidden" name="no" value="${bookmark.no}"> <input
				type="hidden" name="hno" value="${hospital.no}"> <input
				type="submit" value="★">
		</form>
	</c:if>
  
  <h1>평점 : 
  <c:if test="${hospital.rating == 0}">
  0
  </c:if>
  <c:if test="${hospital.rating > 0}">
  <fmt:formatNumber value="${hospital.rating}" pattern=".00" />
  </c:if>
  </h1>

	<h1>병원 리뷰</h1>
	<c:import url="../review/list" />
	<form action="../review/add">
		<input type='hidden' name='num' value='${hospital.no}'> <input
			type="submit" value="리뷰 작성">
	</form>
	<p>
		<a href='list'>목록</a>
	</p>
	<p>
		<a href='../main'>메인</a>
	</p>
</body>
</html>