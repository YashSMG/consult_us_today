<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.company.dao.*" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	  int id=Integer.parseInt(request.getParameter("tid"));
	 
		int i=NoticeBoard_Dao.deleteNotice(id);
	
	    if(i>0){
		response.sendRedirect("NoticeBoard.jsp");
		
	    }
	    else{
		response.sendRedirect("Notice.jsp");
	    }
%>

</body>
</html>

