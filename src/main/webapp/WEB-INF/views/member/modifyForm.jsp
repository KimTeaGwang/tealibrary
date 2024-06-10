<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<html>
<head>
    <title>고객정보수정 페이지</title>
</head>
<link rel="stylesheet" href="<c:url value='/css/board.css'/>">
<body>
<jsp:include page = "../header.jsp" flush = "false"/>
<h1 style="text-align: center">고객정보수정</h1>
<div class="container">
    <form id="form" class="frm" action="" method="post">
        <label for="cust_no">고객번호 :</label><br>
        <input type="text" id="cust_no" name="cust_no" placeholder="" value="<c:out value='${memberDto.cust_no}'/>" readonly="readonly">
        <label for="cust_name">고객이름 :</label><br>
        <input type="text" id="cust_name" name="cust_name" value="<c:out value='${memberDto.cust_name}'/>">
        <label for="phone">전화번호 :</label><br>
        <input type="text" id="phone" name="phone" value="<c:out value='${memberDto.phone}'/>" maxlength="13" oninput="autoHyphen2(this)">
        <label for="cust_email">이메일 :</label><br>
        <input type="text" id="cust_email" name="cust_email" value="<c:out value='${memberDto.cust_email}'/>"><br>
        <label for="grade">고객등급(P,G,S) :</label><br>
        <input type="text" id="grade" name="grade" value="<c:out value='${memberDto.grade}'/>"><br>
        <button type="button" id="gohome" class="btn btn-modify"><i class="fa fa-edit"></i> 목록으로</button>
        <button type="button" id="modifyBtn" class="btn btn-write"><i class="fa fa-pencil"></i> 수정</button>
    </form>
</div>
<jsp:include page = "../footer.jsp" flush = "false"/>
</body>
<script>
    $(document).ready(function () {
        $("#modifyBtn").on("click", function(){
            if(formCheck()) {
                let form = $("#form");
                form.attr("action", "<c:url value='/modify'/>");
                form.attr("method", "post");
                form.submit();
            }
        })
        $("#gohome").on("click", function () { // 목록으로
            location.href = "<c:url value='/list'/>";
        });
    });
    function formCheck() {
        var name = document.getElementById("cust_name").value;
        var phone = document.getElementById("phone").value;
        var email = document.getElementById("cust_email").value;
        var grade = document.getElementById("grade").value;
        if(name == ''){
            alert("이름을 입력해 주세요.");
            return false;
        }
        if(phone == ''){
            alert("휴대폰번호를 입력해 주세요.");
            return false;
        }
        if(!check_phone()){
            alert("휴대폰 번호를 올바르게 입력해 주세요.");
            $("#phone").focus();
            return false;
        }
        if(email == ''){
            alert("이메일을 입력해 주세요.");
            return false;
        }
        if(!check_email()){
            alert("이메일을 올바르게 입력해 주세요.");
            return false;
        }
        if(grade == ''){
            alert("고객등급을 입력해 주세요.");
            return false;
        }
        return true;
    }
    function autoHyphen2(target){
        target.value = target.value.replace(/[^0-9]/g, '').replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
    }
    function check_phone(){
        var phone = document.getElementById("phone").value;

        var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;

        if(regPhone.test(phone) == true){
            return true;
        }

        return false;
    }
    function check_email(){
        var email = document.getElementById("cust_email").value;

        var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
        if(regEmail.test(email) == true){
            return true;
        }
        return false;
    }
</script>
</html>
