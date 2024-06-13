<%@page import="com.company.dao.Industrial_Dao"%>
<%@page import="java.sql.Date"%>
<%@page import="com.company.bean.Industrial_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String industrial_id=request.getParameter("industrial_id");
int id=Integer.parseInt(industrial_id);
String comp_id=request.getParameter("comp_id");
int id1=Integer.parseInt(comp_id);
String training=request.getParameter("training_info");
String visit_date=request.getParameter("visit_date");
Date vdate=Date.valueOf(visit_date);
String college_id=request.getParameter("college_id");
int id2=Integer.parseInt(college_id);

Industrial_Bean bean=new Industrial_Bean(id,id1,training,vdate,id2);

int i=Industrial_Dao.saveIndustrialApply(bean);

if(i>0){
	response.sendRedirect("IndustrialVisit.jsp");
	
}
else{
	response.sendRedirect("500.html");
}





%>

</body>
</html>