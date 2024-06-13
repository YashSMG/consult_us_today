<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.company.bean.*" %>
    <%@ page import="com.company.dao.*"%>
    <%@ page import="java.sql.Date"%>
    <%@ page import="java.text.SimpleDateFormat" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     

<%
       String passout_id=request.getParameter("passout_id");
       int pass1=Integer.parseInt(passout_id);
       
       String passout_year=request.getParameter("passout_year");
       int pass_yr=Integer.parseInt(passout_year);
       String clg_id=request.getParameter("clg_id");
       int clg=Integer.parseInt(clg_id);
       String name=request.getParameter("name");
       String email1=request.getParameter("email");
       String contact_no=request.getParameter("contact_no");
       long con = Long.parseLong(contact_no);
       String password=request.getParameter("password");
       String address=request.getParameter("address");
       String stream=request.getParameter("stream");
       String qualification=request.getParameter("qualification");
       String dob=request.getParameter("dob");
       Date date=Date.valueOf(dob);
      
       // Date dob1=new SimpleDateFormat("yyyy-mm-dd").parse(dob);
       String gender=request.getParameter("gender");
       String city=request.getParameter("city");
       
       
       
       
          
    	Student_Bean b = new Student_Bean(pass1,pass_yr,clg,name,email1,con,password,address,stream,qualification,date,gender,city);
       
    	
    	
       int i = Student_Dao.studentssave(b);
    	
       
       final String email = "kiransayankar091@gmail.com";
		final String pass = "sayankar14";
		String subject = "Registration of user";
		//String msg = "You are successfully registered on cunsultustoday ";
		String msg = "Dear "+email1+",\n\nWelcome to CunsultUsToday!, \n\nPlease find below your Username And Password :\n"
					+"Username :"+email1+"\n"+
					 "Password :"+password+"\n\n\n"+
					
					
					"\n\nThanks and Welcome aboard! \n\n\nRegards,\nCunsultUsToday";
			
    	if(i>0){
       	 Sender.send(email1, subject, msg, email, pass);

    		response.sendRedirect("index.html");
    		
    	}
    	else{
    		response.sendRedirect("500.html");
    	}
 
    		

%>

</body>
</html>
