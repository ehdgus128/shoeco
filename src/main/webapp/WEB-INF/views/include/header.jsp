<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%-- 
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
	<c:set var="isLogin" value="true" />
	<c:set var="loginUser" value="${principal.username}" />
</sec:authorize>--%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" /> 
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShoeCo</title>

<!-- bootstrap 공식 js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<!-- bootstrap icons 추가 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<link href="${contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/js/bootstrap-datepicker.min.js" ></script>


<link rel="shortcut icon" href="${contextPath}/resources/img/favicon.ico" type="image/x-icon">

</head>
<body>

<%-- 
<sec:authentication property="principal" var="principal"/> --%>

<nav class="navbar navbar-expand-lg bg-light" data-bs-theme="light">
  <div class="container-fluid">
    <a class="navbar-brand" href="${contextPath}">ShoeCo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor03">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/airways/">BRAND</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="${contextPath}/hotel/">MEN</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/community/list">WOMEN</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/mypage/myMain">BEST</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${contextPath}/mypage/myMain">SALE</a>
        </li>
        <!-- 로그인 dropdown --><%-- 
        <li class="nav-item dropdown">
			<c:choose>
				<c:when test="${principal eq 'anonymousUser' }">
          			<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">로그인</a>
          			<div class="dropdown-menu">
            			<a class="dropdown-item" href="${contextPath }/login">로그인</a>
           			</div> 
				</c:when>
				<c:otherwise>
	          		<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">${principal.username}</a>
	           			<div class="dropdown-menu">
	             			<a class="dropdown-item" href="${contextPath }/logout">로그아웃</a>
	          			</div>
				</c:otherwise>
			</c:choose>
        </li> --%>
        
        <%-- 
        <sec:authorize access="hasAuthority('ADMIN')" > --%>
       		<li class="nav-item">
       			<a class="nav-link" href="${contextPath}/admin/home">관리자페이지</a>
       		</li><%-- 
        </sec:authorize> --%>
        <!-- dropdown end -->
      </ul>
    </div>
  </div>
</nav>
