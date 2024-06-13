<%@ page trimDirectiveWhitespaces="true" %>
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
try{
	
	 request.getSession().invalidate();
	 response.sendRedirect("index.jsp");
	 
	 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	 response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	 response.setDateHeader("Expires", 55); // Proxies
	 
	 out.println("You are successfully Logout ");
	
	
	 System.out.println("You are successfully logged out");

  
	
}catch(Exception e){
	e.printStackTrace();
}
%>


<!-- <script type="text/javascript">
        window.onload = function () { Clear(); }
        function Clear() {          
            var Backlen=history.length;
            if (Backlen > 0) history.go(-Backlen);
        }
</script> -->


</body>
</html>