<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.company.bean.*" %>
    <%@ page import="com.company.dao.*" %>
    <%@include  file="Header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">

<head>
   </head>

<body>
		
           
        <!-- Single pro tab review Start-->
        <div id="boxshadow" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);  margin-top: 75px; margin-left: 300px; margin-right:100px;">
      
      
      <%
      int id=1;
      College_Bean bean=College_Dao.getCollegeById( id);
      
      %>
      
      
        <form style=" background-color: #ffffff;" >
        <div class="single-pro-review-area mt-t-30 mg-b-15">

            <div class="container-fluid">
                
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            
                                    <div class="row" style="padding-top: 50px; padding-left: 200px; padding-bottom: 50px">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">

                                                <div class="row">
                                                    <div><h1 style="margin-right: 500px; margin-bottom: 30px;">College Profile</h1></div>
                                                    <div class="col-lg-6">

                                                        <table>
                                                        <tr>
                                                           <td> <label style="margin-bottom: 20px;">College Name</label></td>
                                                           <td> <input readonly="readonly" name="text" type="text" class="form-control" placeholder="College Name" value="<%=bean.getName() %>"  style="width: 200%; margin-bottom: 20px;"></td>
                                                        </tr>
                                                          

                                                           <tr>
                                                            <td> <label style="margin-bottom: 20px;">MOU No</label></td>
                                                            <td><input readonly="readonly" type="text" class="form-control" placeholder="MOU No" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getMou_no() %>"></td>
                                                           </tr>
                                                            
                                                        
                                                       
                                                            <tr>
                                                            <td> <label style="margin-bottom: 20px;" >Contact No</label ></td>
                                                            <td><input readonly="readonly" type="text" class="form-control" placeholder="Contact No" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getContact_no()%>"></td>
                                                            </tr>
                                                        
                                                           <tr>
                                                           <td><label style="margin-bottom: 20px;">Email</label></td>
                                                           <td> <input readonly="readonly" type="text" class="form-control" placeholder="Email" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getEmail()%>"></td>
                                                            </tr>
                                                        

                                                           <tr>
                                                           <td><label style="margin-bottom: 20px;">Address</label></td>
                                                           <td> <input readonly="readonly" type="text" class="form-control" placeholder="Address" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getAddress()%>"> </td>
                                                           </tr>
                                                        
                                                           <%-- <tr>
                                                           <td><label style="margin-bottom: 20px;">Password</label></td>
                                                           <td> <input type="text" class="form-control" placeholder="Password" style="width: 200%; margin-bottom: 20px;" value="<%= bean.getPassword()%>"></td>
                                                           </tr>

                                                        
                                                           <tr>
                                                            <td> <label style="margin-bottom: 20px;">Conform Password</label></td>
                                                            <td><input type="text" class="form-control" placeholder="Conform Password" style="width: 200%; margin-bottom: 20px;" value="<%= bean.getPassword()%>"></td>
                                                           </tr> --%>
                

                                                        
                                                            <tr>
                                                            <td><label style="margin-bottom: 20px;">City</label></td>
                                                            <td><input readonly="readonly" type="text" class="form-control" placeholder="City" style="width: 200%; margin-bottom: 20px;" value="<%= bean.getCity()%>"></td>
                                                            </tr>
                                                        </table>

                                                    </div>
                                                        <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="payment-adress mg-t-15" style="padding-top: 30px; padding-right: 200px">
                                                            <button class="btn btn-primary waves-effect waves-light mg-b-15">Close</button>
                                                        </div>
                                                    </div>
                                                
                                                </div>
                                                   
                                                
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        
        <%@include  file="Footer.jsp" %> 
       
</body>

</html>