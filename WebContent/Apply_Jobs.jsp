<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="com.company.bean.ApplyJobs_Bean" %>
    <%@ page import="com.company.dao.*"%>
   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

		String job_id = request.getParameter("id");
			int id = Integer.parseInt(job_id);
		String comp = request.getParameter("comp");
			int comp_id = Integer.parseInt(comp);
			
		Integer std = (Integer)session.getAttribute("id");

		String applied_for=request.getParameter("applied_for");
		String current_location=request.getParameter("current_location");
		String pastexperience=request.getParameter("pastexperience");
			
		String description=request.getParameter("description");


ApplyJobs_Bean bean= new ApplyJobs_Bean(id,comp_id,std,applied_for,current_location,pastexperience,description);

int i = ApplyJobs_Dao.applyjob(bean);

if(i>0){
	response.sendRedirect("ViewJobs.jsp");
	
}
else{
	response.sendRedirect("500.html");
}


%>

</body>
</html>