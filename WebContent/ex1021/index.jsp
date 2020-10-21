<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{width: 100%;height:100%;border:1px solid black;}
  th, td {
    border: 1px solid black;
  }
table tr:first-child {
	text-align:right;
}
</style>
</head>
<body>
<table>
<tr height=170px>
<td colspan="2" >
<%@ include file="top.jsp" %>
</td>
</tr>
<tr height=450px>
<td width=20%><iframe src="left.jsp" height="100%" width="100%" name="left"></iframe></td>
<td><iframe src="center.jsp" width="100%" height="100%" name="center"></iframe></td>
</tr>
<tr height=80px>
<td colspan="2"><%@ include file="footer.jsp" %></td>
</tr>
</table>
</body>
</html>