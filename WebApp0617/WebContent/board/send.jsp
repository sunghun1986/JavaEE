<%@page import="com.sun.org.apache.xpath.internal.functions.Function"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
//스크립틀릿영역

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단 전송</title>
<script>
function send(){
	if(isNaN(form1.dan.value)){
		alert("숫자만 입력하세요!!");
		return;
	}
	form1.action="/board/receive.jsp";//어디다가 보낼꺼냐
	form1.method="get";//중요한정보가 아니니 get으로
	form1.submit();//전송이 일어나는 시점!
	
}
</script>
</head>
<body>
<form name="form1">
	<input type="text" name="dan" placeholder="원하는 단 입력"/>
	</form>
	<button onClick="send()">단전송</button>
</body>
</html>