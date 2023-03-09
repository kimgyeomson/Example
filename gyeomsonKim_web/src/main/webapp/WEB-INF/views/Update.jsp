<%@ page contentType="text/html; charset=UTF-8" 
			 import="java.util.*, model.*"
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>change.jsp</title>
</head>
<body>
	
	<h1>성적변경</h1>
	<hr />
	
	
	
	<form method="POST">
	<label for="stdnum">학번</label>
	<input type="text" name="stdnum" /><br />
	<label for="stdkor">국어</label>
	<input type="text" name="stdkor" /><br />
	<label for="stdeng">영어</label>
	<input type="text" name="stdeng" /><br />
	<label for="stdmat">수학</label>
	<input type="text" name="stdmat" /><br />
	<label for="stdsci">과학</label>
	<input type="text" name="stdsci" /><br />
	
	<input type="hidden" name="command" value="update" />
	<input type="submit" value="변경" />
	<hr />
	
	</form>
	<form method="POST">
		<input type="hidden" name="command" value="main" />
			<input type="submit" value="메인화면" />
	</form>
</body>
</html>