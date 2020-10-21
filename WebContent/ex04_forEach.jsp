<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("tr:odd").css("background-color", "lightblue");
		$("tr:even").css("background-color", "gray");
		$("tr:eq(0)").css("background-color", "pink");
	})
</script>
<style type="text/css">
table {width: 800px;border: solid gray 1px;border-collapse: collapse;}
th, td {border: 1px gray solid;padding: 3px;}
tr {text-align: center;
tr:even {background-color: skyblue}
</style>
</head>
<body>
	<h1>&lt;c:forEach> Test</h1>

	<c:forEach var="i" begin="0" end="10">
  ${i},
	</c:forEach>
	<hr>
	
	<%
		String hobbys[] = { "등산", "독서", "수영", "낚시" };
	%>
	
	<c:forEach items="<%=hobbys%>" var="h" varStatus="state">
		${h}, ${state.index}, ${state.count}<br>
	</c:forEach>

	<hr>
	<jsp:useBean id="bean" class="ex1021.jstl.ForEachBean" />
	${bean.names}
	<br> ${bean.menus}
	<br> ${bean.memberList}
	<br> ${bean.map}
	<hr>
	
	<!-- 1. names는 select박스에 출력하기 -->
	
	<select>
		<option value="0">--선택없음--</option>
		<c:forEach items="${bean.names}" var="n" varStatus="state">
			<option value="${state.count}">${n}</option>
		</c:forEach>
	</select>
	<hr>
	
	<!-- 2. menus는 check박스에 출력하기 -->
	
	<c:forEach items="${bean.menus}" var="menu" varStatus="state">
		<input type="checkbox" value="${menu}" name="menu">${menu}
</c:forEach>
	<hr>
	
	<!-- 3. memberList는 테이블로 출력하기 -->
	
	<table>
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>나이</th>
			<th>주소</th>
		</tr>
		<c:forEach items="${bean.memberList}" var="member" varStatus="state">
			<tr>
				<td>${state.count}</td>
				<td>${member.id}</td><!-- member.getId()가 호출 -->
				<td>${member.name}</td>
				<td>${member.age}</td>
				<td>${member.addr}</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	
	<!-- 4. map은 radio로 출력하기 -->
<fieldset style='width:300px'>
  <legend>나라선택</legend>
	<c:forEach items="${bean.map}" var="nation" varStatus="state">
		<input type="radio" value="${nation.key}" name="nation">${nation.value}
	</c:forEach>
	
</fieldset>

<hr>

가격 : 250000000원 / 
<fmt:formatNumber value="250000000"/>원
</body>
</html>