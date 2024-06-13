<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.company.bean.*" %>
<%@ page import="com.company.dao.*" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

	String id1 = request.getParameter("comp");
		int cmpid = Integer.parseInt(id1);
	String id2 = request.getParameter("jobid");
		int jobid = Integer.parseInt(id2);
	String id3 = request.getParameter("student");
		int stdid = Integer.parseInt(id3);
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String cont =request.getParameter("contact");
		long contact = Long.parseLong(cont);
	String location = request.getParameter("location");
	String appliedfor = request.getParameter("appliedfor");
	String experience = request.getParameter("experience");
	String description = request.getParameter("description");
	
	ApplyJobs_Bean bean = new ApplyJobs_Bean(jobid,cmpid,stdid,appliedfor,location,experience,description,email,contact);
	
	int status = ApplyJobs_Dao.applyjob(bean);
	if(status > 0){
		response.sendRedirect("web_jobApplied.jsp");
	}else{
		response.sendRedirect("web_applyJob.jsp");
	}

%>


</body>
</html>