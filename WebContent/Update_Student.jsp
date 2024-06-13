<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="java.sql.Date"%>
      <%@ page import="com.company.bean.Student_Bean" %>
    <%@ page import="com.company.dao.*"%>
     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


Object id = session.getAttribute("id");
int stdid = (Integer) id;

String passout = request.getParameter("passout");

String name = request.getParameter("name");
String email = request.getParameter("email");
String contact = request.getParameter("contact");
long con = Long.parseLong(contact);

String dob = request.getParameter("dob");
Date date=Date.valueOf(dob);

String passyr = request.getParameter("passingyr");

String address = request.getParameter("address");
String clg = request.getParameter("clg");
String gender = request.getParameter("gender");
String branch = request.getParameter("branch");
String city = request.getParameter("city");

System.out.println("update student file");

Student_Bean b = new Student_Bean(stdid,name,email,con,address,branch,date,gender,city);



int i = Student_Dao.updateStudents(b);
	
	if(i>0){
		response.sendRedirect("MyProfile.jsp");
		
	}
	else{
		response.sendRedirect("500.html");
	}



%>

</body>
</html>