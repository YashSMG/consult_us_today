
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.company.dao.NoticeBoard_Dao" %>
    <%@page import="com.company.bean.NoticeBoard_Bean" %>
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
 /*  String notice_id=request.getParameter("notice_id");
    int n=Integer.parseInt(notice_id); */
 String subject=request.getParameter("subject");
   String start_date=request.getParameter("start_date");
  
  Date sdate =Date.valueOf(start_date);
   
String notice_description=request.getParameter("notice_description");

String end_date=request.getParameter("end_date");


Date edate=Date.valueOf(end_date);

 

 
NoticeBoard_Bean b=new NoticeBoard_Bean(subject,sdate,notice_description,edate);
int i=NoticeBoard_Dao.saveNoticeApply(b);
if(i>0)
{
	response.sendRedirect("Dashboard.jsp");
	
}
else
{
	response.sendRedirect("500.html");
}
}catch(Exception e){
	e.printStackTrace();
}


%>


</body>
</html>