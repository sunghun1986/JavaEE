<%@page import="com.dev.model.notice.Notice"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%!
String url="jdbc:oracle:thin:@localhost:1521:XE";
String user="c##java";
String pw="1234";
Connection con;
PreparedStatement pstmt;
ResultSet rs;
%>
<%
//오라클 연동하기 select 문 수행~~
	con = DriverManager.getConnection(url,user,pw);
	String sql="select * from notice order by notice_id desc";
	pstmt=con.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
	//rs의 모든 데이터를 ArrayList로 옮겨심겠다!!!
	ArrayList<Notice> list = new ArrayList<Notice>();
	
	while(rs.next()){
		Notice notice = new Notice();
		notice.setNotice_id(rs.getInt("notice_id"));
		notice.setTitle(rs.getString("title"));
		notice.setWriter(rs.getString("writer"));
		notice.setContent(rs.getString("content"));
		notice.setRegdate(rs.getString("regdate"));
		notice.setHit(rs.getInt("hit"));
		
	}
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
button{
	background:yellow;
	color:red;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	//제이쿼리는 누구를 어떻게 할지의 문법구조를 갖는다
	//누구를 표현하기 위한 선택자는 css의 선택자를 그대로 지원!!
	$("button").click(function(){
		$(location).attr("href","/notice/registForm.jsp");
	});
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
			for (int i = 1; i <list.size(); i++) {
		%>
		<tr>
			<td>26</td>
			<td>마스크를 쓰고 수업받으세요</td>
			<td>성헌이관리자</td>
			<td>2020-06-17</td>
			<td>31</td>
		</tr>
		
		<%}%>
		<tr>
			<td colspan="5">
				<button>등록</button>
			</td>
		</tr>
	</table>
</body>
</html>














