<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>고객목록조회/수정</title>
</head>
<link rel="stylesheet" href="<c:url value='/css/list.css'/>">
<body>
<jsp:include page = "../header.jsp" flush = "false"/>
<div style="text-align:center">
    <div class="board-container">
        <h1>고객목록조회/수정</h1>
        <table>
            <tr>
                <th class="cust_no">고객번호</th>
                <th class="cust_name">고객이름</th>
                <th class="phone">전화번호</th>
                <th class="join_date">가입일자</th>
                <th class="cust_email">이메일</th>
                <th class="grade">고객등급</th>
            </tr>
            <c:forEach var="memberDto" items="${list}">
                <tr>
                    <td class="cust_no"><a href="<c:url value='/modify?cust_no=${memberDto.cust_no}'/> ">${memberDto.cust_no}</a></td>
                    <td class="cust_name">${memberDto.cust_name}</td>
                    <td class="phone">${memberDto.phone}</td>
                    <c:choose>
                        <c:when test="${memberDto.join_date.time >= startOfToday}">
                            <td class="regdate"><fmt:formatDate value="${memberDto.join_date}" pattern="HH:mm" type="time"/></td>
                        </c:when>
                        <c:otherwise>
                            <td class="regdate"><fmt:formatDate value="${memberDto.join_date}" pattern="yyyy-MM-dd" type="date"/></td>
                        </c:otherwise>
                    </c:choose>
                    <td class="cust_email">${memberDto.cust_email}</td>
                    <td class="grade">${memberDto.grade}</td>
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
