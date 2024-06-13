<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.company.bean.Contact_Bean" %>
<%@page import="com.company.dao.Contact_Dao" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	
	//String name = request.getParameter("name");
	String name = request.getParameter("et_pb_contact_name_0");
	//String email = request.getParameter("email");
	String email = request.getParameter("et_pb_contact_email_0");
	//String message = request.getParameter("message");
	String message = request.getParameter("et_pb_contact_message_0");
	
	Contact_Bean cb = new Contact_Bean(name,email,message);
	
	int id = Contact_Dao.saveContactUs(cb);
	
	if(id >0){
		response.sendRedirect("layouts/art-design/digital-marketing-contact-page/contact.jsp");
	}else{
		response.sendRedirect("500.html");
	}
	
	%>

</body>
</html>