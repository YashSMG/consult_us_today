<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.company.bean.Industrial_Bean"%>
    <%@ page import="com.company.dao.Industrial_Dao" %>
    <%@ page import="java.util.List" %>
    <%@ include file="Header.jsp" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Data Table | Kiaalap - Kiaalap Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- educate icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/educate-custon-icon.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
    <!-- x-editor CSS
		============================================ -->
    <link rel="stylesheet" href="css/editor/select2.css">
    <link rel="stylesheet" href="css/editor/datetimepicker.css">
    <link rel="stylesheet" href="css/editor/bootstrap-editable.css">
    <link rel="stylesheet" href="css/editor/x-editor-style.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/data-table/bootstrap-table.css">
    <link rel="stylesheet" href="css/data-table/bootstrap-editable.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body style="background-color: #f1f1f1;">

		

        <div style="margin-top: -50px" id="boxshadow" class="tableheader">
            <span>
                <h3>Industrial Visit</h3>
            </span>
        </div>

        <!-- Static Table Start -->
        <div style="margin-top: -60px; margin-left:-50px" id="boxshadow" class="tableshadow"><!-- style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); margin-left: 275px; margin-right: 20px; margin-top: 70px;" -->
        <div class="data-table-area mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="sparkline13-list" style="background-color: white">
                           <!--  <div class="sparkline13-hd">
                                <div class="main-sparkline13-hd">
                                    <h1 style="text-align: left;">Industrial Visit</h1>
                                </div>
                            </div> -->
                            <div class="sparkline13-graph">
                                <div class="datatable-dashv1-list custom-datatable-overright">
                                  <!--  <div id="toolbar">
                                        <select class="form-control dt-tb">
											<option value="">Export Basic</option>
											<option value="all">Export All</option>
											<option value="selected">Export Selected</option>
										</select>
                                    </div>-->
                                    <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                        data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar" 
                                         style="background-color: white;" >
                                        <thead style="text-align: center;">
                                            <tr>                                               
                                                <th>Company Image</th>
                                                <th data-field="Company Name">Company Name</th>
                                                <th data-field="Posted Date" >Posted Date</th>
                                                <!-- <th data-field="Training Info" >Training Info</th> -->
                                                <th>Action</th>  
                                                <th>Approve</th>
                                            </tr>                                      
                                        </thead>
                                        <tbody style="text-align: center;">
                                         <%
                                        	List<Industrial_Bean> list=Industrial_Dao.viewAllIndustrialVisitPost();
                                        		for(Industrial_Bean bean:list){
                                          %>
                                            <tr >   
                                                <td   >
                                                <img src="<%= request.getContextPath() %><%=bean.getCmpy_image()%>"   width="70" height="70" /> 
                                                </td>
                                                <td><%=bean.getName() %></td>
                                                <td><%=bean.getPosted_date() %></td>
                                               	<td>
                                        			<a href='viewIndustrialVisit.jsp?id=<%= bean.getIndustrial_id()%>' data-toggle="modal" data-target="#myinfo" data-uid="1" class="update btn btn-info btn-sm"><span class="glyphicon glyphicon-eye-open"></span>
                                        			</a>
                                      				<%--  <a href="EditTransaction.jsp?tid=<%=bean.getClg_id()%>" data-toggle="modal" data-target="#myModalharsha" data-uid="1" class="update btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span>
                                        			</a> --%>
                                         			<button type="button" data-toggle="modal" data-target="#delete" data-uid="1" class="delete btn btn-danger btn-sm" name="tid"  onclick="getTId(<%=bean.getIndustrial_id()%>)"><span class="glyphicon glyphicon-trash"></span></button>  
                                    			</td>
                                    
                        <%
                        	String applnStatus = bean.getApproval_status();
                        	if(applnStatus.equals("NotApproved")){
                        %>
                       <td>
                       <label class="switch">                                                                      
                       <input type="checkbox" name="uid"  onclick="changeJobSts(<%=bean.getIndustrial_id()%>)">         
                       <span class="slider round" ></span>
                       </label>                   
                       </td>
                     <% 
                        }else{
                     %>
                     <td>
                       <label class="switch">                                                                    
                       <input type="checkbox" name="uid"  checked onclick="changeJobSts(<%=bean.getIndustrial_id()%>)">                                               
                       <span class="slider round" ></span>
                       </label>                   
                     </td>
                    <%
                        }
                    %>   
                                    
                     </tr>
                                            
                      <% }%>
                                         
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


 <!-- ----------modal code starts-------------- -->
    
		   <div id="delete" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			    <form action="DeleteIndustrialVisit.jsp">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">�</button>
			        <h4 class="modal-title">Delete Data</h4>
			      </div>
			      <div class="modal-body">
			        <strong>Are you sure you want to delete this data?</strong>
			      </div>
			      <input type="hidden" name="tid" id="idd" value="i=idd">
			      <div class="modal-footer">
			        <button type="submit" id="del" class="btn btn-danger">Delete</button>
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			      </form>
			    </div> 
			  </div>
			</div>
    
    
    
    
        <div id="myinfo" class="modal fade" role="dialog">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">×</button>
                  <h4 class="modal-title">Passbook Details</h4>
                </div>
                <div class="modal-body">
            <div class="tables">
                    
                    <div class="table-responsive bs-example widget-shadow">
                      <h4>Member Details:</h4>
                      <table class="table table-hover"> 
                        
                          <tr> 
                            <td><b>Name:</b></td> 
                            <td>Rahul</td>
                          </tr> 
                          <tr> 
                            <td><b>Email ID:</b></td> 
                            <td>rahul@gmail.com</td>
                            </tr>
                            <tr> 
                            <td>Mobile:</td>
                            <td>678567890</td>
                               </tr>
                               <tr>
                                    <td><b>Business Name:</b></td>
                                    <td>Financial</td>
                               </tr>   
                               <tr>
                                    <td><b>Address:</b></td>
                                    <td>Pune</td>
                               </tr> 
                               <tr>
                                    <td><b>Created:</b></td>
                                    <td>2019-04-22 12:12:56</td>
                               </tr> 
                               <tr>
                                    <td><b>User Type:</b></td>
                                    <td>Retailer</td>
                               </tr> 
                               <tr>
                                    <td><b>ParentType:</b></td>
                                    <td>Distributer</td>
                               </tr>
                                
                          </table>
                  </div>
                </div>
            </div>
                <div class="modal-footer">
                  
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
        </div>
    <!-- ----------modal code ends---------------- -->



        <!-- Static Table End -->
    <%@ include file="Footer.jsp" %>
   
        

    <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="js/metisMenu/metisMenu.min.js"></script>
    <script src="js/metisMenu/metisMenu-active.js"></script>
    <!-- data table JS
		============================================ -->
    <script src="js/data-table/bootstrap-table.js"></script>
    <script src="js/data-table/tableExport.js"></script>
    <script src="js/data-table/data-table-active.js"></script>
    <script src="js/data-table/bootstrap-table-editable.js"></script>
    <script src="js/data-table/bootstrap-editable.js"></script>
    <script src="js/data-table/bootstrap-table-resizable.js"></script>
    <script src="js/data-table/colResizable-1.5.source.js"></script>
    <script src="js/data-table/bootstrap-table-export.js"></script>
    <!--  editable JS
		============================================ -->
    <script src="js/editable/jquery.mockjax.js"></script>
    <script src="js/editable/mock-active.js"></script>
    <script src="js/editable/select2.js"></script>
    <script src="js/editable/moment.min.js"></script>
    <script src="js/editable/bootstrap-datetimepicker.js"></script>
    <script src="js/editable/bootstrap-editable.js"></script>
    <script src="js/editable/xediable-active.js"></script>
    <!-- Chart JS
		============================================ -->
    <script src="js/chart/jquery.peity.min.js"></script>
    <script src="js/peity/peity-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="js/tab.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
    <!-- tawk chat JS
		============================================ -->
    <script src="js/tawk-chat.js"></script>
    
      <script>
function getTId(val){
	var tid = val;
	
	$("#idd").val(tid);
	return tid;
	 
	}
</script> 
    
    <script>
    	function changeJobSts(val){
    		alert("inside function"+val);
    		var sts = val;
	
    	  $.ajax({
    		type:"post",
    		data:{userid:sts,
    		},
    		url:"IndustrialVisitPosting_ApprovalStatus.jsp",
    		success:function(data){
    		alert("Success");
    	}  	
    	})
    	}
    </script>
    
    
</body>

</html>




