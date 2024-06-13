
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.company.dao.Campus_Dao" %>
    <%@page import="com.company.bean.Campus_Bean" %>
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

String registration_link=request.getParameter("registration_link");

String position=request.getParameter("position");

String drive_info=request.getParameter("drive_info") ;



Campus_Bean b=new Campus_Bean(comp,registration_link,position,drive_info);
 int i=Campus_Dao.saveCampusnew(b);
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