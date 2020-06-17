<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
</script>
</head>
<body>
<%
//클라이언트가 전송한 파라미터를 이용하여 해당 단을 출력 out.print()
//HTTP get/post 로 전송되는 모든 파라미터는 String이다!
	String  dan = request.getParameter("dan");
	int n = Integer.parseInt(dan);
	for(int i = 1; i <=9; i++){
		out.print(n+"*"+i+"="+(n*i)+"<br>");
	}

%>
</body>
</html>