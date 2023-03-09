<%@ page contentType="text/html; charset=UTF-8"
		 import="java.util.*, model.*"
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>input.jsp</title>
</head>
<body>
	
	<h1>학생 정보 입력</h1>
	<hr />
<form method="POST">
	<label>학번</label>
	<input type="text" name="stdnum" /><br />
	<label>이름</label>
	<input type="text" name="stdname" /><br />
	<label>성별 </label>
	<label for="male">남</label>
	<input type="radio" name="stdgender" id="male" value="male"/>
	<label for="female">여</label>
	<input type="radio" name="stdgender" id="female" value="female" /><br />
	<label>국어</label>
	<input type="text" name="stdkor" /><br />
	<label>영어</label>
	<input type="text" name="stdeng" /><br />
	<label>수학</label>
	<input type="text" name="stdmat" /><br />
	<label>과학</label>
	<input type="text" name="stdsci" /><br />
	<hr />
	
	<input type="hidden" name="command" value="add" />
	<input type="submit" value="등록">
	<hr />
</form>
		 <button onclick="history.back()">뒤로가기</button>
	

</body>
</html>