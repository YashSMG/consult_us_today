<%@ page import="com.company.bean.Campus_Bean" %>
    <%@ page import="com.company.dao.Campus_Dao"%>

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
		String company_id = request.getParameter("comp_id");
		int comp_id = Integer.parseInt(company_id);
		String campus_id = request.getParameter("campus_id");
		int camp_id = Integer.parseInt(campus_id);
		String college_id = request.getParameter("college_id");
		int clg_id = Integer.parseInt(college_id);

		String position=request.getParameter("position");
		String drive_info=request.getParameter("drive_info");

		Campus_Bean cbean=new Campus_Bean(comp_id,camp_id,clg_id,position,drive_info);

		int i=Campus_Dao.saveCampusApply(cbean);

		if(i>0){
				response.sendRedirect("Campus.jsp");	
		}
		else{
				response.sendRedirect("500.html");
		}

}catch(NumberFormatException e){
	e.printStackTrace();
}

%>



</body>
</html>