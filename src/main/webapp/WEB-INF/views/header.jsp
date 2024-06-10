<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h1 style="text-align: center;">도서 고객 및 대여 관리 프로그램 ver 1.0</h1>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <a class="navbar-brand" href="<c:url value='/'/>">홈</a>
    <div class="collapse navbar-collapse" id="collapsibleNavbar" style="float:right">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="<c:url value='/register'/>">고객등록</a></li>
            <li class="nav-item"><a class="nav-link" href="<c:url value='/list'/>">고객목록조회/수정</a></li>
            <li class="nav-item"><a class="nav-link" href="<c:url value='/rentList'/>">고객대여리스트</a></li>
            <li class="nav-item"><a class="nav-link" href="<c:url value='/rentMoney'/>">고객대여금조회</a></li>
        </ul>
    </div>
</nav>
<br/>