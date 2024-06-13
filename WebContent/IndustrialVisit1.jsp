
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.company.dao.Industrial_Dao" %>
    <%@page import="com.company.bean.Industrial_Bean" %>
    <%@page import="java.sql.Date" %>
    
    
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
try{
  String comp_id=request.getParameter("comp_id");
    int comp=Integer.parseInt(comp_id);
 
 /*  String posted_date=request.getParameter("posted_date");
  
  Date pdate =Date.valueOf(posted_date);
   */
String training_info=request.getParameter("training_info");


 

 
 Industrial_Bean b=new Industrial_Bean( comp,training_info);
int i=Industrial_Dao.saveIndustrial1(b) ;

if(i>0)
{
	response.sendRedirect("Dashboard.jsp");
	
}
else
{
	response.sendRedirect("500.html");
}
}catch(NumberFormatException e){
	e.printStackTrace();
}


%>


</body>
</html>