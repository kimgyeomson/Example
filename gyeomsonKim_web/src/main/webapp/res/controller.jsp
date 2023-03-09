<%@ page contentType="text/html; charset=UTF-8" import="model.*"%>

<%
if (request.getMethod().equals("POST")) {
	request.setCharacterEncoding("UTF-8");
}
%>
<jsp:useBean id="studentDAO" class="model.StudentDAO" scope="session" />
<jsp:useBean id="studentDO" class="model.StudentDO" scope="page" />
<jsp:setProperty name="studentDO" property="*" />

<%
	String viewPath = "/WEB-INF/views/";
	String select = request.getParameter("select");
	String command = request.getParameter("command");
	
	if(select == null) {
		if(request.getMethod().equals("GET")) {
			pageContext.forward(viewPath + "Menu.jsp");
		}
		else if(request.getMethod().equals("GET")) {
			pageContext.forward(viewPath + "Menu.jsp");
		}
	}
	else {
		if(select != null && select.equals("insert")) {
			pageContext.forward(viewPath + "Insert.jsp");
		}
		else if(select != null && select.equals("find")) {
			pageContext.forward(viewPath + "Find.jsp");
		}
		else if(select != null && select.equals("findall")) {
			session.setAttribute("list", studentDAO.FindAll());
			pageContext.forward(viewPath + "FindAll.jsp");
		}
		else if(select != null && select.equals("update")) {
			pageContext.forward(viewPath + "Update.jsp");
		}
		else if(select != null && select.equals("delete")) {
			pageContext.forward(viewPath + "Delete.jsp");
		}
		else if(select != null && select.equals("off")) {
			
		}
		
		if(command != null && command.equals("add")) {
				studentDAO.Insert(studentDO);
		}
		else if(command != null && command.equals("update")){
				studentDAO.update(studentDO);
		}
		else if(command != null && command.equals("delete")){
				studentDAO.Delete(studentDO);
		}
		else if(command != null && command.equals("find_num")) {
			session.setAttribute("findlist", studentDAO.FindByNum(studentDO));
		}
		
		
		
			
	}
	
%>