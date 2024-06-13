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
	String cid = request.getParameter("compid");
	int comp_id = Integer.parseInt(cid);
	String cate = request.getParameter("category");
	int category = Integer.parseInt(cate);
	
	System.out.println(" comp id :"+comp_id +"  category :"+category);
	
	int status = Company_Dao.addCategory(comp_id, category);
	
	if(status>0){
		response.sendRedirect("AllCompanyList.jsp");
	}else{
		response.sendRedirect("AllCompanyList.jsp");
	}


%>

</body>
</html>