<%@page import="ex1021.el.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>El  -표현언어</h3>
<h3>
	\${5} = ${5}<br>
	\${5*2} = ${5*2}<br>
	\${5/2} = ${5/2}<br>
	\${5>2} = ${5>2}<br>
	\${5 lt 2} = ${5 lt 2}<br>
	\${"안녕" } = ${"안녕" }<br>
	${'수요일' }=${'수요일' } <br>
	\${5 gt 4 && 10 eq 10  }=${5 gt 4 && 10 eq 10 }<br>
	\${5>3 ?"맞아":"틀려" }= ${5>3 ?"맞아":"틀려" }
	<hr>
	<!-- 만약, http://localhost:8000/step07_EL_JSTL/ex01_ELTest.jsp?age=20&id=??
	된다면 나이에 따라 성인, 미성년자, 출력한다.-->
	
	<%=request.getParameter("age") %> / ${param.age}<br> 
	${param.age>18?"성인":"미성년자"}<br>

	<!-- 만약 id가 있으면 id를 출력하고 없으면 Guest라고 출력한다. -->
	${param.id==null?param.id:"Guest"}<br>
	${empty param.id?param.id:"Guest"}<br>
	
	${param.id!=null?param.id:"Guest"}<br>
	${not empty param.id?param.id:"Guest"}<br>
	
	<!-- 표현언어 안에서 문자열 연결하기 -->
	${param.id==null?"Guest":param.id}님 <br>
	${param.id==null?"Guest":param.id+="님"} <br>
	${param.id==null?"Guest":param.id.concat("님")} <br>
	
	<hr>
	<%
	   //scope영역에 데이터 저장
	   request.setAttribute("id", "jang");
	   session.setAttribute("addr", "서울");
	   session.setAttribute("message", "점심메뉴는?");
	   application.setAttribute("message", "즐거운 수요일");
	   application.setAttribute("hobbys", new String[]{"a","b","c"});	
	%>
	
	<!-- 
	 표현언어에서 Scope영역에 있는 데이터는 출력할 수 있다.
	 pageScope < requestScope < scssionScope <applicationScope
	 -->
	 
	 id = <%=request.getAttribute("id") %> / ${requestScope.id} / ${id}<br>
	 addr = <%=session.getAttribute("addr") %> / ${sessionScope.addr} / ${addr}<br>
	 message = <%=session.getAttribute("message") %> / ${sessionScope.message } / ${message }<Br>
	 message = <%=application.getAttribute("message") %> / ${applicationScope.message} / ${message}<br>
	 hobbys = <%=application.getAttribute("hobbys") %> / ${applicationScope.hobbys} / ${hobbys}
	 
	 <hr>
	 
	 <!-- 자바의 객체의 getXxx()메소드를 호출.. -->
	 <%--
	   Product p=new Product();
	   out.println("이름 : "+p.getName()+"<br>");
	 --%>
	 
	 <!-- 객체생성 액션태그 
	       Bean은 자바의 class하나를 의미한다.
	 -->
	   <jsp:useBean id="p" class="ex1021.el.Product"/>
	  코드 : <%=p.getCode() %> / ${p.code}<br><!-- p.getCode()를 호출해주는 문법이다.
	  변수가 호출되는 것이아니다!private이니까 .getCode()가 앞뒤로 두번 호출됨-->
	  이름 : ${p.name}<br>
	  가격 : ${p.price}<br>
	  수량 : ${p.qty}<br>
	  총 가격 : ${p.price*p.qty}<br>
	  
	 
	 
	 
	 
	 
	 
</h3>
</body>
</html>