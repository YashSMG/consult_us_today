<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.company.dao.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getParameter("userid");
	int comp_id = Integer.parseInt(id);
	int status = Company_Dao.changeCompPriority(comp_id);
	System.out.println("Student Id :"+comp_id);
	if(status > 0){
		response.sendRedirect("AllCompanyList.jsp");
	}
	else{
		response.sendRedirect("AllCompanyList.jsp");
	}
%>

</body>
</html>