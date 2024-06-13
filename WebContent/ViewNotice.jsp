<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.company.dao.*" %> 
<%@ page import="com.company.bean.*" %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Notice</title>
</head>
<body>

<%

String id = request.getParameter("id");
int i = Integer.parseInt(id);
NoticeBoard_Bean bean = NoticeBoard_Dao.viewNotice(i);

%>

<div class="modal-content">
      <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" onClick="window.location.reload();">×</button>
       
        <h4 class="modal-title" style="color:white">View Notice</h4>
      </div>
      <div class="modal-body">
           <div class="tables">
				
				<div class="table-responsive bs-example widget-shadow">
						<table class="table table-hover"> 
								
								<tr> 
									<td><b>Subject of Notice</b></td> 
									<td><%= bean.getSubject()%></td>	
								</tr> 
								<tr> 
									<td><b>Start Date:</b></td> 
									<td><%= bean.getStart_date() %></td>
								</tr> 
							    <tr> 
									<td><b>Notice Description :</b></td> 
									<td><%= bean.getNotice_description()%></td>
							    </tr>
							    <tr> 
									<td><b>End Date:</b></td> 
									<td><%= bean.getEnd_date() %></td>
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