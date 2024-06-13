<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.company.dao.*" %>
<%@ page import="com.company.bean.*" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	if(username.equals("admin@gmail.com") && password.equals("admin")){
		session.setAttribute("id", 01);
		session.setAttribute("name", "Admin");
		session.setAttribute("email", "admin@gmail.com");
		session.setAttribute("usertype", "Admin");
		
		response.sendRedirect("Dashboard.jsp");
	}
	else if(LoginDetails.checkStudent(username,password)) 
     {
	Student_Bean sbean=LoginDetails.studentData();
  	   
  	  session.setAttribute("id", sbean.getStd_id());
   	  session.setAttribute("name", sbean.getName());
   	  session.setAttribute("email",sbean.getEmail());
   	  session.setAttribute("usertype", sbean.getUsertype());
   	  session.setAttribute("image", sbean.getImage());
   	  System.out.println("session set");
        
   	  response.sendRedirect("web_job_list_grid.jsp");
        
     }else if(LoginDetails.checkCollege(username,password))
     {
  	  College_Bean bean=LoginDetails.collegeData();
  	  
  	  session.setAttribute("id", bean.getClg_id());
  	  session.setAttribute("name", bean.getName());
  	  session.setAttribute("email", bean.getEmail());
  	  session.setAttribute("usertype",bean.getUsertype());
  	  
       response.sendRedirect("Dashboard.jsp");	
	
	  }
     else if(LoginDetails.checkCompany(username,password))
       {
  	   
  	  Company_Bean combean=LoginDetails.companyData();
  	  
  	  
  	  session.setAttribute("id", combean.getComp_id());
  	  session.setAttribute("name", combean.getName());
  	  session.setAttribute("email", combean.getEmail());
  	  session.setAttribute("usertype", combean.getUsertype()); 
         response.sendRedirect("Dashboard.jsp");
        }
	
	else{
    	 response.sendRedirect("web_Login.jsp");
     }
%>

</body>
</html>