<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.company.bean.*"%>
    <%@page import="com.company.dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
String name=request.getParameter("name");
String mou_no=request.getParameter("mou_no");
String contact_no=request.getParameter("contact_no");
long contact_no1=Long.parseLong(contact_no);
String email1=request.getParameter("email");
String address=request.getParameter("address");
String password=request.getParameter("password");
String city=request.getParameter("city");


final String email = "kiransayankar091@gmail.com";
	final String pass = "sayankar14";
	String subject = "Registration of user";
	//String msg = "You are successfully registered on cunsultustoday ";
	String msg = "Dear "+email1+",\n\nWelcome to CunsultUsToday!, \n\nPlease find below your Username And Password :\n"
			+"Username :"+email1+"\n"+
			 "Password :"+password+"\n\n\n"+
			
			
			"\n\nThanks and Welcome aboard! \n\n\nRegards,\nCunsultUsToday";

College_Bean cbean=new College_Bean(name,mou_no,contact_no1,email1,address,password,city);
int i=College_Dao.registerCollege(cbean);


if(i>0)
{
	Sender.send(email1, subject, msg, email, pass);
	response.sendRedirect("index.jsp");
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