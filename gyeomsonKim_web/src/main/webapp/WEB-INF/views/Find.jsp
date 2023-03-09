<%@ page contentType="text/html; charset=UTF-8" 
			 import="java.util.*, model.*"
%>
<%	
	String result = "";	
	
	if(session.getAttribute("findlist") != null) {
		@SuppressWarnings("unchecked")
		ArrayList<StudentDO> list = (ArrayList<StudentDO>)session.getAttribute("findlist");
	
	for(StudentDO iDO : list) {
		result += "학번: " + iDO.getStdnum() + "<br />"
				+ "이름: " + iDO.getStdname() + "<br />"
				+ "성별: " + iDO.getStdgender() + "<br />"
				+ "국어: " + iDO.getStdkor() + "<br />"
				+ "영어: " + iDO.getStdeng() + "<br />"
				+ "수학: " + iDO.getStdmat() + "<br />"
				+ "과학: " + iDO.getStdsci() + "<br />";
		}
	}
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Find.jsp</title>
</head>
<body>
	
	<h1>개별조회</h1>
	<hr />
	<form method="POST">
	<h3>개별조회</h3>
	<label for="stdnum">학번</label>
	<input type="text" name="stdnum" />
	<input type="hidden" name="command" value="find_num" />
	<input type="submit" value="검색" />
	</form>
	<hr />
	<button onclick="history.back()">뒤로가기</button><br />
	<ul>
		<%= result %>
	</ul>
</body>
</html>