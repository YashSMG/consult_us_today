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

String id = request.getParameter("id");
int i = Integer.parseInt(id);

Student_Bean bean = Student_Dao.viewStudent(i);


%>

<div class="modal-content">
      <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" onClick="window.location.reload();">×</button>
       
        <h4 class="modal-title" style="color:white">View Student</h4>
      </div>
      <div class="modal-body">
           <div class="tables">
				
				<div class="table-responsive bs-example widget-shadow">
						<table class="table table-hover"> 
								<tr>
									<td><b>Student Image :</b></td>
								    <td>
								    	<%
								    	String img = bean.getImage();
								    	if( img.isEmpty() )
								    	{
								    	%>
								    	<img src="/img/default.jpg" width="70" height="60">
								    	<% }else{%>
										<img src="<%=request.getContextPath()%><%=bean.getImage()%>" width="70" height="60">
										<% }%>
									</td>
								</tr>
								<tr> 
									<td><b>Student Name:</b></td> 
									<td><%= bean.getName() %></td>	
								</tr> 
								<tr> 
									<td><b>Contact No:</b></td> 
									<td><%= bean.getContact_no() %></td>
								</tr> 
							    <tr> 
									<td><b>Email:</b></td> 
									<td><%= bean.getEmail() %></td>
							    </tr>
							    <tr> 
									<td><b>DOB :</b></td>
									<%if(bean.getDob().equals("") ){ %>
									<td>null</td>
									<%}else{ %>
									<td><%=bean.getDob()  %></td>
									<%} %>
							    </tr>
							    <tr>
							        <td><b>Address :</b></td>
							        <td><%= bean.getAddress() %></td>
							    </tr>
							 	<tr>
							        <td><b>Stream :</b></td>
							        <td><%= bean.getStream() %></td>
							    </tr>
							    <tr>
							        <td><b>Qualification :</b></td>
							        <td><%= bean.getQualification() %></td>
							    </tr>
							    <tr>
							        <td><b>Gender :</b></td>
							        <td><%= bean.getGender() %></td>
							    </tr>
			     </table>
			     
				</div> 
      </div>
  </div>
      <div class="modal-footer">
       <center> 
         <button type="button" class="btn btn-default" data-dismiss="modal" onClick="window.location.reload();">Close</button>
       </center>  
      </div>
    </div>
    
    

</body>
</html>