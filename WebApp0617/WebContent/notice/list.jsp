<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	alert("로드 성공");
});
</script>
</head>
<body>
	<table width="100%" border="1px">
		<tr>
			<td width="5%">No</td>
			<td width="65%">제목</td>
			<td width="10%">작성자</td>
			<td width="10%">등록일</td>
			<td width="10%">조회수</td>
		</tr>
		<%
			for (int i = 1; i <= 9; i++) {
		%>
		<tr>
			<td>26</td>
			<td>마스크를 쓰고 수업받으세요</td>
			<td>성헌이관리자</td>
			<td>2020-06-17</td>
			<td>31</td>
		</tr>
		<%
			}
		%>
		<tr>
			<td colspan="5">
				<button>등록</button>
			</td>
		</tr>
	</table>
</body>
</html>














