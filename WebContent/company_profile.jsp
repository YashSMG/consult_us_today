<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.company.dao.*" %>
    <%@ page import="com.company.bean.*" %>
    <%@ include file="Header.jsp" %>
    
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Basic Form Element | Kiaalap - Kiaalap Admin Template</title>
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
    <!-- modals CSS
        ============================================ -->
    <link rel="stylesheet" href="css/modals.css">
    <!-- forms CSS
        ============================================ -->
    <link rel="stylesheet" href="css/form/all-type-forms.css">
    <!-- style CSS
        ============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
        ============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
        ============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <!-- <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"> -->
  <!-- <link rel="icon" href="images/favicon.ico" type="image/x-icon"> -->
   <script src="js/js validation.js"></script>
   <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css">
      
        
       <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
      <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.js"></script>
     <script type="text/javascript" src="js/member_details.js"></script>  
     <style>
        h1{
            font-family:"Times New Roman", Times, serif;
        
        }
     </style>
     
        
</head>

<body>

   			
            
            
            <%
            
            Object cmp_id=session.getAttribute("id");
            int cmpid = (Integer) cmp_id;
            
            
          Company_Bean bean=Company_Dao.getRecordById(cmpid);
          
            
          %>
            
            
            
            
            
       
        <div class="row" >
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="width: 107%">
                        <div class="sparkline12-list">
                            

                            <div class="col-md-8" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);  margin-top: 25px; margin-left: 275px;  ">
                            
                            <div id="formcolor" style="background-color: #ffffff;">

                                 <div style="padding-top: 25px;">
                                           <center><h1><b>Company-Profile  </b></h1></center>
                                 </div>
                            
                            <div class="sparkline12-graph" style="text-align: center;">
                                <div class="basic-login-form-ad" style="text-align: center;">
                                    <form action="#" style="margin-left: center;">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                             <div class="all-form-element-inner">
										   <center>
                                                   <div class="form-group-inner">
                                                        <div class="row">
                                                        </div>
                                                    </div>
									      <table>
									      <tr>
									     <!--   <td><label style="margin-bottom: 20px;">Image</label></td>-->
                                      <!--  <center>
                                             <label class=newbtn>Image</label></center> --> 
                                         <td><td><td><td>
                                         
                                          <img src="<%=request.getContextPath() %><%=bean.getCmpy_image() %>" 
                                          				style="width: 175px; height: 120px;margin-bottom: 21px; margin-left:100px; border-radius: 50%; "/> </img>
                                         
                                       <!--  <input readonly= "readonly"  id="pic" name="comp_img" class='pis' onchange="readURL(this);" type="file" style=" padding-bottom: 17px; margin-left: 104px;">  -->
                                         
                                         </td></td></td></td>
                                         </tr>
								                           <tr>
                                                           <td> <label style="margin-bottom: 20px; margin-top: -120px;">Company Name</label></td>
                                                           <td> <input readonly="readonly" name="name" type="text" class="form-control" placeholder="Company  Name" value="<%= bean.getName() %>"  style=" margin-bottom: 20px; width: 350px; margin-left: 50px; margin-top: -127px;"></td>
                                                        </tr>
                                                          

                                                          
                                                            
                                                        
                                                       
                                                            <tr>
                                                            <td> <label style="margin-bottom: 20px;margin-top: -70px;" >Contact No</label ></td>
                                                           <td> <td><input readonly="readonly" name="contact_no" class="form-control" placeholder="Contact No" value="<%= bean.getContact_no() %>" style="width: 200%; margin-bottom: 20px; width: 350px; margin-top: -75px;margin-left: -350px;"></td></td>
                                                            </tr>
                                                        
                                                           <tr>
                                                           <td><label style="margin-bottom: 20px; margin-top: -20px; ">Email</label></td>
                                                          <td> <td> <input readonly=" readonly"  type="text" name="email"  class="form-control" placeholder="Email" value="<%= bean.getEmail() %>" style="margin-bottom: 20px; margin-left: -350px; width: 350px; margin-top: -25px"></td></td>
                                                            </tr>
                                                        

                                                           <tr>
                                                           <td><label style="margin-bottom: 20px;">Address</label></td>
                                                          <td> <td> <input readonly="readonly" type="text" name="address" class="form-control" placeholder="Address" value="<%= bean.getAddress()%>" style=" margin-bottom: 20px; margin-left: -350px; width: 350px;"> </td></td>
                                                           </tr>
                                                        
                                                           <tr>
                                                           <td><label style="margin-bottom: 20px;">Website</label></td>
                                                          <td> <td> <input readonly= "readonly"  name="website" class="form-control" placeholder="Website" value="<%= bean.getWebsite() %>" style=" margin-bottom: 20px; margin-left: -350px; width: 350px;"></td></td>
                                                           </tr>

                                                        
                                                         <%--   <tr>
                                                            <td> <label style="margin-bottom: 20px;">Password</label></td>
                                                            <td><input type="text" name="password" class="form-control" placeholder="Password" value="<%= bean.getPassword() %>" style=" margin-bottom: 20px;"></td>
                                                           </tr>
                

                                                        
                                                            <tr>
                                                            <td><label style="margin-bottom: 20px;">Conform Password</label></td>
                                                            <td><input type="text" name="conform password" class="form-control" placeholder="conform Password" value="<%=bean.getPassword() %>" style=" margin-bottom: 20px;"></td>
                                                            </tr>

                                                            <tr> --%>
                                                                <td> <label style="margin-bottom: 20px;">City </label> </td>
                                                               <td> <td><input readonly= "readonly" type="text" name="city" class="form-control" placeholder="city" value="<%=bean.getCity() %>" style=" margin-bottom: 20px; margin-left: -350px; width: 350px;"></td>
                                                                 </td>
                                                            </tr> 
                                                        </table>

                                                 <div class="form-group-inner">
                                                 
                                                        <div class="row">
                                                            



                                                        </div>
                                                    </div>

                                                 <div class="form-group-inner">
                                                        <div class="row">
                                                            
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="row">
														<div class="col-lg-12">
															<div class="payment-adress mg-t-15"
																style="padding-top: 30px; padding-right: 20px">
																<a href="UpdateCompanyProfile.jsp"><input type="button" name="Update"
																	class="btn btn-primary waves-effect waves-light mg-b-15" value="Update"
																	style="margin-right: -800px; background-color:teal"></a>
															<!--  	<a href="#"> <input type="button" name="Close"
																	class="btn btn-primary waves-effect waves-light mg-b-15"
																	value="Close"></a>
															</div>
														</div>

													</div>-->
                                                      <!--    <div class="form-group-inner">
                                                           <div class="row" style="padding-bottom: 25px;">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <button class="btn btn-primary" style="margin-left:400px">Close</button>
                                                                </div>
                                                            </div>
                                                        </div>-->
                                                    </div>
                                            </div>
                                                  
                                                </form>
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
        <!-- Basic Form End-->
     
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
    <!-- tab JS
        ============================================ -->
    <script src="js/tab.js"></script>
    <!-- icheck JS
        ============================================ -->
    <script src="js/icheck/icheck.min.js"></script>
    <script src="js/icheck/icheck-active.js"></script>
    <!-- plugins JS
        ============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
        ============================================ -->
    <script src="js/main.js"></script>
    <!-- tawk chat JS
        ============================================ -->
    <script src="js/tawk-chat.js"></script>
</body>

</html>