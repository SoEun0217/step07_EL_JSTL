<%@page import="java.util.Date"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String userId=request.getParameter("userId");
String userPwd=request.getParameter("userPwd");
String userName=request.getParameter("userName");
//받는 순서 안지켜도된다.
String id="soeun";
String pwd="1234"; 
if(userId.equals(id)&&userPwd.equals(pwd)){
	//인증이 성공했으니 session영역에 사용자정보를 저장한다.
	session.setAttribute("sessionName", userName);
	session.setAttribute("creationTime", new Date().toLocaleString());
	//session.getCreationTime()이 아닌 것은 브라우저를 열고 다른 것ㅇ을 하다가 로그인을 하면 처음에 브라우저 연시간이뜸
	
	//이동
	response.sendRedirect("LoginOk.jsp");
	
}else{%>

<script type="text/javascript">
alert("<%=userName%>님 정보를 확인해주세요");
//location.href="LoginForm.html";  입력한 값이 다 날라가서 귀찮아짐
history.back();//뒤로 가기 입력한 값이 그대로 남아있음
</script>


<%
	//response.sendRedirect("LoginForm.html");
	/* out.println("<script>");
	out.println("alert('"+userName+"님 정보를 확인해주세요')");
	out.println("</script>"); */
}
%>

</body>
</html>