<%@ page contentType="text/html; charset=UTF-8" 
		 import="java.util.*, model.*"
%>
<%	
	@SuppressWarnings("unchecked")
	ArrayList<StudentDO> list = (ArrayList<StudentDO>)session.getAttribute("list");
	String result = "";
	
	for(StudentDO iDO : list) {
		result += "학번: " + iDO.getStdnum() + "<br />"
				+ "이름: " + iDO.getStdname() + "<br />"
				+ "성별: " + iDO.getStdgender() + "<br />"
				+ "국어: " + iDO.getStdkor() + "<br />"
				+ "영어: " + iDO.getStdeng() + "<br />"
				+ "수학: " + iDO.getStdmat() + "<br />"
				+ "과학: " + iDO.getStdsci() + "<br />" + "<hr/>";
				
	}
%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>FindAll.jsp</title>
</head>

<body>
	
	<h1>학생 전체 조회</h1>
	 <button onclick="history.back()">뒤로가기</button>
	<ul>
		<%= result %>
	</ul>

</body>
</html>