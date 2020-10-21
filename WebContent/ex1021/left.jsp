<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#join").click(function(){
		top.center.location.href="register.html";//top이 없으면 움직일수 없다.
		//top을 빼고 해도 center를 찾을수없다.
	});
	
	$("#logout").click(function(){
		if(confirm("로그아웃하시겠습니까?")){
			top.location.href="Logout.jsp";
			//여기서 session.invalidate()하면 안되고 새로 logout파일을 만든다
		}
		
	});
});

</script>
</head>
<body>
<%
if(session.getAttribute("id")==null){
%>

<form method="get" action="LoginPro.jsp">
  아이디 : <input type="text" name="userId" /><br/>
  패스워드 : <input type="password" name="userPwd" /></br/>  
  <input type="submit" value="로그인" />
 </form>
 <input type="button" value="회원가입" id="join">
 <a href="register.html" target="center">가입</a>
  <%
  } else{//로그인된 상태
%>
		<h2><%=session.getAttribute("id")%>님 로그인중</h2>
		<input type="button" value="로그아웃" id="logout"/>
	  
	<% 
  }
  %>



</body>
</html>