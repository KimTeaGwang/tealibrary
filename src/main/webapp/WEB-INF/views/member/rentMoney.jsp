<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>고객대여금액조회 페이지</title>
</head>
<link rel="stylesheet" href="<c:url value='/css/list.css'/>">
<body>
<jsp:include page = "../header.jsp" flush = "false"/>
<div style="text-align:center">
    <div class="board-container">
        <h1>고객대여금액조회</h1>
        <table>
            <tr>
                <th class="cust_no">고객번호</th>
                <th class="cust_name">고객이름</th>
                <th class="grade">고객등급</th>
                <th class="rentMony">총대여금액</th>
            </tr>
            <c:forEach var="memberDto" items="${list}">
                <tr>
                    <td class="cust_no">${memberDto.cust_no}</td>
                    <td class="cust_name">${memberDto.cust_name}</td>
                    <td class="grade">${memberDto.grade}</td>
                    <td class="rentMony">${memberDto.rentMony}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<jsp:include page = "../footer.jsp" flush = "false"/>
</body>
<script>
</script>
</html>
