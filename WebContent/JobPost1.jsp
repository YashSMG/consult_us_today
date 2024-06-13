<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.company.dao.JobPost_Dao" %>
    <%@page import="com.company.bean.JobPost_Bean" %>
    <%@page import="java.sql.Date" %>
    
    
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%



/* String comp_id=request.getParameter("comp_id");
 int comp=Integer.parseInt(comp_id);  */

 String comp_id=request.getParameter("comp_id");
 int com=Integer.parseInt(comp_id);
String job_title=request.getParameter("job_title");
String technology=request.getParameter("technology");
String type_id=request.getParameter("job_type");
int tid=Integer.parseInt(type_id);

 
String other=request.getParameter("other");
String vacancies=request.getParameter("vacancies");
int vacancy=Integer.parseInt(vacancies);

JobPost_Bean a =new JobPost_Bean(com,job_title,technology,tid,other,vacancy);
int i=JobPost_Dao.saveJobpost(a);
if(i>0)
{
	response.sendRedirect("Dashboard.jsp");
	
}
else
{
	response.sendRedirect("500.html");
}
%>


</body>
</html>

