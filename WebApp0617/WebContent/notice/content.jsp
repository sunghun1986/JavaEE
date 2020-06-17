<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록 폼</title>
<style>
div {
	margin: auto;
}

div {
	width: 500px;
	height: 500px;
	border: 2px solid blue;
	text-align: center;
}

div input, textarea {
	width: 98%;
}

textarea {
	height: 350px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		$("#bt_list").click(function() {
			//history.back();//이전페이지로
			//캐시를 보여주는 거라서, 누군가가 글을 썻을때 갱신된 내용을
			//볼수 없다..
			//새롭게 서버에게 요청을 시도하는것임.
			$(location).attr("href","/notice/list.jsp");
		});
	});
	function regist() {
		//웹서버의 서블릿(jsp)에게 오라클에 넣을것을 요청하자!
		$("form").attr("method","post");//내용이 많다.
		$("form").attr("action","/notice/regist.jsp");
		$("form").submit();
	}
</script>
</head>
<body bgcolor = "yellow">
	<div>
		<form>
			<input type="text" name="title" placeholder="제목 입력"/> 
			<input type="text" name="writer"  placeholder="작성자 입력"/>
			<textarea name="content" placeholder="내용작성.."></textarea>
		</form>
		<button id="bt_list">뒤로</button>
		<button id="bt_regist">등록</button>
	</div>
</body>
</html>













