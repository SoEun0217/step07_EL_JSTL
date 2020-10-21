<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>set정보 확인하기</h3>
메시지 : ${message} / <c:out value="${message}"/> <br>
아이디 : ${id} / <c:out value="${id}"/> <br>
나이 : ${age} / <c:out value="${age}"/> <br>

저장된 정보 제거하기<br>
<c:remove var="message"/>

<h3>set정보 확인하기 - 제거 후 </h3>
메시지 : ${message} / <c:out value="${message}"/> <br><!-- 여기서 ${}를 넣으면 출력이기때문에 밥먹자를 찾게되ㅁ -->
아이디 : ${id} / <c:out value="${id}"/> <br>
나이 : ${age} / <c:out value="${age}"/> <br>
</body>
</html>