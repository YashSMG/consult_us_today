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
		String jobid = request.getParameter("id");
		int id = Integer.parseInt(jobid);
		/* System.out.println("session : "+session); */
		
		
	  if(session.getAttribute("id") == null){
			response.sendRedirect("web_Login.jsp");
		}else{  
			response.sendRedirect("web_applyJob.jsp?id1="+id);
		}
	
	
	%>
	<input type="hidden" name="idvalue" value="<%=id%>">

</body>
</html>