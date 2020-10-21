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
<h1>JSTL - &lt;c:set> or &lt;c:out></h1>
<c:out value="안녕"/> , ${"안녕"}<br>
문자취급<c:out value="<h1>배고프다</h1>"/> <br> ${"<h1>배고프다</h1>"}<br>
문자취급<c:out value="<h1>배고프다</h1>" escapeXml="true"/><br>
태그인식<c:out value="<h1>배고프다</h1>" escapeXml="false"/><br>
<hr>
<%
  String addr="서울";//표현언어에서 바로 사용 불가(xxxScope에 저장되어있어야한다)
  session.setAttribute("addr", addr);
%>
<%=addr %> / ${addr} /
<hr>
<c:set var="message" value="뭐 먹지?" scope="session"/><!-- 변수선언 -->
<c:set var="id" value="soeun"/>
<c:set var="age" value="24" scope="application"/>
<h3>set정보 확인하기</h3>
메시지 : ${message} / <c:out value="${message}"/> <br>
아이디 : ${id} / <c:out value="${id}"/> <br>
나이 : ${age} / <c:out value="${age}"/> <br>

<a href="ex02_result.jsp">확인하자</a>
</body>
</html>