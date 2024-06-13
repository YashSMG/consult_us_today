<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="com.company.bean.JobPost_Bean" %>
     <%@ page import="com.company.dao.*"%>
     <%@ include file="Header.jsp" %>
      
      
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Add Course | Kiaalap - Kiaalap Admin Template</title>
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
    <!-- dropzone CSS
		============================================ -->
    <link rel="stylesheet" href="css/dropzone/dropzone.css">
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

		


        <!-- Single pro tab review Start-->
         <div id="boxshadow" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);  margin-top: 120px; margin-left: 300px; margin-right:100px;">
      
        
        <div class="single-pro-review-area mt-t-30 mg-b-15">

            <div class="container-fluid">
                
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            
                                    <div class="row" style="padding-top: 50px; padding-left: 100px; padding-bottom: 50px">
                                        <!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> -->
                                            <div class="review-content-section">



                   <div class="row">
                        <div>
                            <h3 style="margin-right: 500px; margin-bottom: 30px;">Apply</h3>
                
                        </div>

            <!-- <div class="content-error"> -->

                <!-- <div class="hpanel"> -->
                
                
                <% 
                   String job_id=request.getParameter("id");
                int id=Integer.parseInt(job_id); 
                
                String comp = request.getParameter("comp");
                int comp_id = Integer.parseInt(comp);
                
                   JobPost_Bean d=ApplyJobs_Dao.getJobs(id);
                
                
                
                %>
                    
                    
                        <form action="Apply_Jobs.jsp" id="loginForm">
                            <div class="row">
                            <div class="form-group col-lg-6" style="width: 50%;margin-bottom: 15px;">
                                    <label>Job Title</label>
                                    <input type="hidden" name="id" value="<%=id%>">
                                    <input type="hidden" name="comp" value="<%=comp_id%>">
                                    <input name="job_title" class="form-control" value="<%=d.getJob_title() %>">
                            </div>
                               
                               <div class="form-group col-lg-6" style="width: 50%;margin-bottom: 15px;">
                                    <label>Applied For</label>
                                    <input id="applied_for" name="applied_for" class="form-control">
                                    <div id="eapplied_for" style="color:red;height:0.1px;font-size:12px;"></div>
                                </div>
                               
                               
                               <div class="form-group col-lg-6">
                                    <label>Current Location</label>
                                    <input id="current_loc" name="current_location" class="form-control">
                                    <div id="ecurrent_loc" style="color:red;height:0.1px;font-size:12px"></div>
                                </div>
                               
                                <div class="form-group col-lg-6">

                                    <label>Past Experience</label>
                                    
                                    <select name="pastexperience" class="form-control">
                                    <option value="Fresher" >Fresher</option>
                                    <option value="6 Months">6 Months</option>
                                    <option value="1 Year">1 yr</option>
                                    <option value="2 Year">2 Yrs</option>    
                                    <option value="3 Year">3 yrs</option>
                                    </select>
 
                                </div>
                               <div class="form-group col-lg-6">
                                    <label>Description</label>
                                    <textarea name="description" class="form-control"></textarea>
                                </div>
                               
                                
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-default" onclick="return validate()">Apply</button>
                                <button class="btn btn-default">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
               
            </div>
        </div>
        </div>
        </div>
    </div>
           <%@include file="Footer.jsp" %>
    		
                               
          

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
    <!-- maskedinput JS
		============================================ -->
    <script src="js/jquery.maskedinput.min.js"></script>
    <script src="js/masking-active.js"></script>
    <!-- datepicker JS
		============================================ -->
    <script src="js/datepicker/jquery-ui.min.js"></script>
    <script src="js/datepicker/datepicker-active.js"></script>
    <!-- form validate JS
		============================================ -->
    <script src="js/form-validation/jquery.form.min.js"></script>
    <script src="js/form-validation/jquery.validate.min.js"></script>
    <script src="js/form-validation/form-active.js"></script>
    <!-- dropzone JS
		============================================ -->
    <script src="js/dropzone/dropzone.js"></script>
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