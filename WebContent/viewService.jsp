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

Services_Bean bean = Services_Dao.viewServices(i);

%>

<div class="modal-content">
      <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" onClick="window.location.reload();">×</button>
       
        <h4 class="modal-title" style="color:white">View Service</h4>
      </div>
      <div class="modal-body">
           <div class="tables">
				
				<div class="table-responsive bs-example widget-shadow">
						<table class="table table-hover"> 
								<tr>
									<td><b> Image :</b></td>
								    <td>
										<img src="<%=request.getContextPath()%><%=bean.getImage()%>" width="70" height="60">
									</td>
								</tr>
								<tr> 
									<td><b>Title:</b></td> 
									<td><%= bean.getServiceType() %></td>	
								</tr> 
								<tr> 
									<td><b>Short Description:</b></td> 
									<td><%= bean.getShortDesc() %></td>
								</tr> 
							    <tr> 
									<td><b>Long Description:</b></td> 
									<td><%= bean.getLongDesc() %></td>
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