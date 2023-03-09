<%@ page contentType="text/html; charset=UTF-8" 
			 import="java.util.*, model.*"
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Delete.jsp</title>
</head>
<body>
	
	<h1>학생정보삭제</h1>
	<hr />	
	
	<form method="POST">
	
	<label for="stdnum">학번</label>
	<input type="text" name="stdnum" /><br />
	
	<input type="hidden" name="command" value="delete" />
	<input type="submit" value="삭제" />
	<hr />
	
	</form>
	<form method="POST">
		<input type="hidden" name="command" value="main" />
			<input type="submit" value="메인화면" />
	</form>
	<button onclick="history.back()">뒤로가기</button>
</body>
</html>