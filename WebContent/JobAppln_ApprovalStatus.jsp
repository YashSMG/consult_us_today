<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.company.dao.*"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getParameter("userid");
	System.out.println("id  :"+id);
	int job_appln_id = Integer.parseInt(id);
	System.out.println("User_Id is ::>>"+job_appln_id);
	int status = JobApplication_Dao.status_JobApplnApprove(job_appln_id);

	if(status > 0){
		response.sendRedirect("All_JobApplications.jsp");
		System.out.println("User Status Updated");
	}
	else{
		response.sendRedirect("All_JobApplications.jsp");
	}
%>



</body>
</html>