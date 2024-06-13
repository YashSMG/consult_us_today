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
	String sid = request.getParameter("uid1");
		int id = Integer.parseInt(sid);
		
		System.out.println("Ajax Data :"+id);

		if(session.getAttribute("usertype").equals("Company")){
				Notification_Dao.updateComp(id);
		}
		else if(session.getAttribute("usertype").equals("Student")){
				Notification_Dao.updateStd(id);	
		}
		else if(session.getAttribute("usertype").equals("College")){
				Notification_Dao.updateClg(id);
		}

%>

</body>
</html>