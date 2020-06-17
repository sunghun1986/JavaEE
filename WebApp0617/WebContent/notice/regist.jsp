<%@ page contentType="text/html; charset=UTF-8"%>
<%
	//클라이언트가 전송한 파라미터들을 받아서 오라클에 넣을것임..
	//따라서 디자인코드는 필요없다!
	//out.print("나 regist.jsp에용");
	//클라이언트가 전송한 파라미터는 요청객체에(request) 들어있따
	//이 요청객체는 이미 jsp에서는 내장객체라는 이름으로 지원된다
	//참고로 request 객체의 자료형은 HttpServletRequest 이다!
	request.setCharacterEncoding("utf-8");//파라미터를 받기전에 인코딩처리
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	out.print("제목은"+title+"<br>");
	out.print("작성자는"+writer+"<br>");
	out.print("내용은"+content+"<br>");
%>