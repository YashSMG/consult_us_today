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

		System.out.println("Inside Status change JobAppln");
		
		String id = request.getParameter("id1");
			int i = Integer.parseInt(id);
		String sts = request.getParameter("sts1");
		
		int status = JobApplication_Dao.changeStatus(i, sts);
		
		if(status > 0){
			response.sendRedirect("JobApplication.jsp");
		}else{
			response.sendRedirect("JobApplication.jsp");
		}
		
		%>

</body>
</html>