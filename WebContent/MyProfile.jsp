<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.company.bean.Student_Bean" %>
    <%@ page import="com.company.dao.Student_Dao" %>
    
    <%@ include file="Header.jsp" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Student Profile | Kiaalap - Kiaalap Admin Template</title>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
            
      	     
      
        <!-- Single pro tab review Start-->
        <div id="boxshadow" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);  
        
        	margin-top: 120px; margin-left: 280px; margin-right:70px;">
      
      <form style=" background-color: #ffffff;">
       <% 
       Object stdid = session.getAttribute("id");
       int sid=(Integer) stdid;
       
       Student_Bean bean=Student_Dao.viewStudent(sid);
       %>
        
        <div class="single-pro-review-area mt-t-30 mg-b-15">

            <div class="container-fluid">
                
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            
                                    <div class="row" style="padding-top: 25px; padding-left: 200px; padding-bottom: 50px">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">

                                                <div class="row">
                                                    <div>
                                                    <h1 style="margin-right: 571px; margin-bottom: 25px;">Profile</h1>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <table>
                                                        <tr>
                                                           <td> <label style="margin-bottom: 20px;">Student Name</label></td>
                                                           <td> <input readonly="readonly" name="text" type="text" class="form-control"   style="width: 200%; margin-bottom: 20px;" value="<%=bean.getName() %>"></td>
                                                        </tr>
                                                          

                                                           <tr>
                                                            <td> <label style="margin-bottom: 20px;">
                                                            Email</label></td>
                                                            <td><input readonly="readonly" name="Email" type="text" class="form-control" placeholder="example@gmail.com" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getEmail() %>"></td>
                                                           </tr>
                                                            
                                                        
                                                       
                                                            <tr>
                                                            <td> <label style="margin-bottom: 20px;" >Contact No</label ></td>
                                                            <td><input readonly="readonly" type="text" class="form-control" placeholder="Contact No" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getContact_no() %>" ></td>
                                                            </tr>
                                                        
                                                           <tr>
                                                           <td><label style="margin-bottom: 20px;">Date of Birth</label></td>
                                                           <td> <input readonly="readonly" type="Date" class="form-control" placeholder="DOB" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getDob() %>"></td>
                                                            </tr>
                                                        
                                                            <tr>
                                                           <td><label style="margin-bottom: 20px;">Passing Year</label></td>
                                                           <td> <input readonly="readonly" type="text" class="form-control" placeholder="Passing Year" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getPassout_year() %>"> </td>
                                                           </tr>
                                                           <tr>
                                                           <td><label style="margin-bottom: 20px;">Address</label></td>
                                                           <td> <input readonly="readonly" type="text" class="form-control" placeholder="Address" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getAddress() %>"> </td>
                                                           </tr>
                                                           <tr>
                                                            <td><label style="margin-bottom: 20px;">College </label></td>
                                                           <td> <input readonly="readonly" type="text" class="form-control" placeholder="College" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getCollege() %>"> </td>
                                                           </tr>
                                                           <tr>
                                                            <td><label style="margin-bottom: 20px;">Gender</label></td>
                                                           <td> 
                                                           <select class="form-control" style="width: 200%; margin-bottom: 20px;">
                                                            <option><%=bean.getGender() %></option>
                                                            </select>
                                                           <!-- <option>Male</option>
                                                           <option>Female</option> -->
                                                           </td>
                                                           </tr>
                                                       </select>
                                                   </td>
                                                           </tr>
                                                 <td><label style="margin-bottom: 20px;">Branch</label></td>
                                                           <td> <input readonly="readonly" type="text" class="form-control" placeholder="Branch" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getStream() %>"> </td>
                                                           </tr>
                                                        
                                                            <tr>
                                                            <td><label style="margin-bottom: 20px;">City</label></td>
                                                            <td><input readonly="readonly" type="text" class="form-control" placeholder="City" style="width: 200%; margin-bottom: 20px;" value="<%=bean.getCity() %>"></td>
                                                            </tr>
                                                        </table>

                                                    </div>
                                                        <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="payment-adress mg-t-15" style="padding-top: 30px; padding-right: 200px">
                                                            <button  class="btn btn-primary waves-effect waves-light mg-b-15">Close</button>
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
        </div>
            </div>
        </div>
   
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
    <!-- morrisjs JS
        ============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/jquery.charts-sparkline.js"></script>
    <!-- calendar JS
        ============================================ -->
    <script src="js/calendar/moment.min.js"></script>
    <script src="js/calendar/fullcalendar.min.js"></script>
    <script src="js/calendar/fullcalendar-active.js"></script>
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

</body>
</html>