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

Contact_Bean bean = Contact_Dao.viewContactUs(i);
%>

<div class="modal-content">
      <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" onClick="window.location.reload();">�</button>
       
        <h4 class="modal-title" style="color:white">View ContactUs</h4>
      </div>
      <div class="modal-body">
           <div class="tables">
				
				<div class="table-responsive bs-example widget-shadow">
						<table class="table table-hover"> 
								
								<tr> 
									<td><b> Name:</b></td> 
									<td><%= bean.getName() %></td>	
								</tr> 
								
							   <%--  <tr> 
									<td><b>Contact No:</b></td> 
									<td><%= bean.getContact_no() %></td>
							    </tr> --%>
							    <tr> 
									<td><b>Email :</b></td> 
									<td><%= bean.getEmail() %></td>
							    </tr>
							    <tr>
							        <td><b>Message :</b></td>
							        <td><%= bean.getMessage() %></td>
							    </tr>
							 	<tr>
							        <td><b>Date :</b></td>
							        <td><%= bean.getcDate() %></td>
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