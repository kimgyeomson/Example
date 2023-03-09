<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>menu.jsp</title>
</head>
<body>
	
	<h1>학생 성적 관리 프로그램</h1>
	<hr />
	
<form method="GET">
	[선택]<br />
	<label for="input">1. 학생 정보 입력</label>
	<input type="radio" name="select" id="input" value="insert"/><br />
	<label for="Search">2. 학생 개별조회 조회</label>
	<input type="radio" name="select" id="search" value="find" /><br />
	<label for="Search">2. 학생 전체조회 조회</label>
	<input type="radio" name="select" id="search" value="findall" /><br />
	<label for="change">3. 성적 변경</label>
	<input type="radio" name="select" id="change" value="update" /><br />
	<label for="remove">4. 학생 정보 삭제</label>
	<input type="radio" name="select" id="remove" value="delete" /><br />
	<label for="off">5. 프로그램 종료</label>
	<input type="radio" name="select" id="off" value="off" /><br />
	<hr />
	
	<input type="submit" value="선택">
	
	
</form>
</body>
</html>