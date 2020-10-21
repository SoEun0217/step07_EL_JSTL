<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>&lt;c:if> 와 &lt;c:choose></h3>
<!-- 
http://localhost:8000/step07_EL_JSTL/ex03_if_choose.jsp?age=20

만약, 나이가 있다면 "~살 입니다." 출력하기
 -->
<c:if test="${not empty param.age}" var="result">
   <h1 style='color:red'>${param.age}살 입니다.</h1>
</c:if>

결과 : ${result}<br>

<hr>
<%-- <c:if test="${param.age!=null}" > --%><!-- var는 if문의 결과를 저장해주는 것 주는것 -->   
<c:if test="${result}">
  <c:choose>
   <c:when test="${param.age>18}">
      <h3>${param.age}살은 성인입니다.</h3>
   </c:when>
   <c:otherwise>
       <h3>${param.age}살은 미자입니다.서비스 제한</h3>
   </c:otherwise>
  </c:choose>
</c:if>

<hr color="red">
<form name="f" action="ex03_if_choose.jsp" method="get">
 이름  : <input type="text" name="name" value="${param.name}"><br>
 선택  : 
 	<select name="job">
 		<option value="0">--선택--</option>
 		<option value="학생">학생</option>
 		<option value="개발자">개발자</option>
 		<option value="백수">백수</option>
 		<option value="백조">백조</option>
 	</select><br>
 	<input type="submit" value="제출하기">
</form>
<!-- 
	1.만약 name과 job이 전송된다면 "~님 직업은 ~입니다."출력
	
	2. job의 종류에 따른 메시지를 출력
	  학생이라면 "공부하세요"
	  개발자라면 "최고의 개발자 입니다"
	  백수 "노세~노세~"
	  백조 "나도 백조이고 싶다.."
	  0이면 선택사항없음
	  
	3. 값이 전송되었을때 각 폼에 선택된 내용이 그대로 보이게

 -->
 <c:if test="${param.name!=null and param.job!=null}">
   <h3>${param.name}님 직업은 ${param.job}입니다.</h3>
 <c:choose>
   <c:when test="${param.job=='학생'}">
   	<h4>"공부하세요"</h4>
   </c:when>
    <c:when test="${param.job=='개발자'}">
   	<h4>"최고의 개발자 입니다."</h4>
   </c:when>
    <c:when test="${param.job=='백수'}">
   	<h4>"노세~"</h4>
   </c:when>
    <c:when test="${param.job=='백조'}">
 	<h4>나도 백조할래</h4>
   </c:when>
    <c:when test="${param.job=='0'}">
   	<h4>선택사항없음</h4>
   </c:when>

 </c:choose>
</c:if>
<script type="text/javascript">
	document.f.job.value="${param.job}";
	//$([name=job]).val('${param.job}'); jQuery문법
</script>
 
 
 

</body>
</html>