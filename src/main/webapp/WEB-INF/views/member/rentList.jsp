<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>고객대여리스트 페이지</title>
</head>
<link rel="stylesheet" href="<c:url value='/css/list.css'/>">
<body>
<jsp:include page = "../header.jsp" flush = "false"/>
<div style="text-align:center">
    <div class="board-container">
        <h1>고객대여리스트</h1>
        <table>
            <tr>
                <th class="cust_no">고객번호</th>
                <th class="rent_no">대여번호</th>
                <th class="book_code">도서코드</th>
                <th class="rent_price">대여금액</th>
                <th class="rent_date">대여일자</th>
            </tr>
            <c:forEach var="memberrentDto" items="${list}">
                <tr>
                    <td class="cust_no">${memberrentDto.cust_no}</td>
                    <td class="rent_no">${memberrentDto.rent_no}</td>
                    <td class="book_code">${memberrentDto.book_code}</td>
                    <td class="cust_email">${memberrentDto.rent_price}</td>
                    <c:choose>
                        <c:when test="${memberrentDto.rent_date.time >= startOfToday}">
                            <td class="regdate"><fmt:formatDate value="${memberrentDto.rent_date}" pattern="HH:mm" type="time"/></td>
                        </c:when>
                        <c:otherwise>
                            <td class="regdate"><fmt:formatDate value="${memberrentDto.rent_date}" pattern="yyyy-MM-dd" type="date"/></td>
                        </c:otherwise>
                    </c:choose>
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
