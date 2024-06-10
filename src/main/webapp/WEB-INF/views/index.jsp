<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title>홈</title>
</head>
<p>
<jsp:include page = "header.jsp" flush = "false"/>
<div style="border: 1px solid red; text-align: center; margin-left:15%; margin-right:15%;">
	<p> 도서 고객 및 대여관리 프로그램</p>
	<p>프로그램 작성순서<br>
	1. 고객정보 테이블을 생성 한다.<br>
	2. 대여정보 테이블을 생성 한다.<br>
	3. 고객정보, 대여정보 테이블에 제시된 데이터를 생성한다.<br>
	4. 고객정보 조회 프로그램을 작성한다.<br>
	5. 고객정보 조회 프로그램을 작성한다.<br>
	6. 고객별 대여금액을 조회하는 프로그램을 작성한다.</p>
</div>
<jsp:include page = "footer.jsp" flush = "false"/>
</body>
</html>
