<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="com.company.bean.Student_Bean" %>
    <%@ page import="com.company.dao.Student_Dao" %>
     <%@ include file="Header.jsp" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">

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
</head>

<body>
		

        <div id="boxshadow" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);  margin-top: 70px; margin-left: 275px; margin-right:50px;">
       
         <% 
       int id=1;
       Student_Bean bean=Student_Dao.viewStudent(id);
       %>
       
        <form method="post" action="Update_Student.jsp"
        
        
        style="background-color: #ffffff; padding-top: 50px; padding-left: 50px; padding-right: 50px; padding-bottom: 10px;" >
        <div class="single-pro-review-area mt-t-30 mg-b-15">
            
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">
                                                <div class="form-group">
                                                            <label><h3>Update Details<h3></label>
                                                        </div>
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                    <div class="form-group">
                                                            <input name="std_id" type="hidden" class="form-control" value="<%=1 %>">
                                                        </div>
                                                        <div class="form-group">
                                                            <input name="name" type="text" placeholder="Full Name" class="form-control" value="<%=bean.getName() %>">
                                                        </div>
                                                        <div class="form-group">
                                                            <input name="passout_id" type="text" placeholder="Passout id" class="form-control" value="<%=bean.getPassout_id() %>">
                                                        </div>
                                                        <div class="form-group">
                                                            <input name="email" type="text" placeholder="E-mail.com" class="form-control" value="<%=bean.getEmail()%>">
                                                        </div>
                                                        <div class="form-group">
                                                            <input name="contact_no" type="text" placeholder="Contact No"  class="form-control" value="<%=bean.getContact_no()%>">
                                                        </div>
                                                        <div class="form-group">
                                                            <input name="dob" type="text" placeholder="DOB"  class="form-control"value="<%=bean.getDob()%>">
                                                        </div>
                                                        <div class="form-group">
                                                            <input name="passout_year" type="text" placeholder="Passout Year"  class="form-control" value="<%=bean.getPassout_year()%>">
                                                        </div>
                                                        <div class="form-group">
                                                            <input name="address" type="text" placeholder="Address"  class="form-control" value="<%=bean.getAddress()%>"">
                                                        </div>
                                                        <div class="form-group">
                                                            <input name="clg_id" type="text" placeholder="Clg Id"  class="form-control" value="<%=bean.getClg_id()%>"">
                                                        </div>
                                                        <div class="form-group">
                                                            <input name="qualification" placeholder="qualification"  type="text" class="form-control" value="<%=bean.getQualification()%>">
                                                        </div>
                                                        <div class="form-group">
                                                            <input name="password" placeholder="Password"  type="text" class="form-control" value="<%=bean.getPassword()%>">
                                                        </div>
                                                        
                                                    </div>
                                                    <div class="col-lg-6">

                                                     <div class="form-group">
                                                            <select name="gender" class="form-control">
																<option><%=bean.getGender() %></option>
																<option>Male</option>
																<option>Female</option>
															</select>
                                                        </div>
                                                        <div class="form-group">
                                                            <select name="stream" class="form-control">
																	<option><%=bean.getStream() %></option>
																	<option>Mechanical</option>
																	<option>Electrical</option>
																	<option>Computer</option>
																	<option>Information technology</option>
																	<option>Electronics</option>
																	<option>Civil</option>
																</select>
                                                        </div>
                                                       
                                                        <div class="form-group">
                                                            <select name="city" class="form-control">
																	<option><%=bean.getCity() %></option>
																	<option>Nagpur</option>
																	<option>Amravati</option>
																	<option>Pune</option>
																	<option>Shimala</option>
																	<option>Mumbai</option>
																</select>
                                                        </div>

                                                </div>

                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="payment-adress mg-t-15">
                                                            <br><br>
                                                            <button type="submit" class="btn btn-primary waves-effect waves-light mg-b-15">Update</button>
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
                </div>
            </div>
        </div>
    </div>
</div>
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