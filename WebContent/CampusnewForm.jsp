<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.company.dao.Campus_Dao" %>
 <%@page import="com.company.bean.Campus_Bean" %>
 <%@ include file="Header.jsp" %>
    <!doctype html>
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
   		
            
       


        <div class="row" style="margin-left: -100px; margin-right: -30px;margin-bottom: 90px;">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="width: 107%">

                        <div class="sparkline12-list" style="margin-top: -25px">
                            <div class="col-sm-2">
                                
                            </div>
                            <div class="col-md-8" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); 
                             margin-top: 20px; margin-left: 100px; margin-right:100px;">
                               <div id="formcolor" style="background-color: #ffffff;">
                                  <div style="padding-top: 25px;">
                                    <center><h1><b>Campus</b></h1></center>
                                      
                                  </div> 

                            <div class="sparkline12-graph" style="text-align: center;">
                                <div class="basic-login-form-ad" style="text-align: center;">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                             <div class="all-form-element-inner">


                                                <center><form action="Campusnew.jsp" style="margin-left: 370px;">

                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    
                    <%
                    	Object obj = session.getAttribute("id");
                    	int id = (Integer)obj;
                    
                    %>
               
                
                                                                <label class="row" style="margin-left: -100px;"> Company Name:</label>
                                                                <input type="hidden" name="comp_id" value="<%=id%>">
                                                                <input name="Company_Name"type="text" class="form-control" value="<%=session.getAttribute("name") %>"
                                                                		style="border-radius: 15px;width: 400px;margin-left: -110px;" readonly="readonly"/>
                                                                 
                                                            </div>
                                                            
                                                        </div>
                                                    </div>

                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <label class="login2" style="margin-left: -106px;">Drive Info</label>
                                                                <textarea id="description" name="drive_info"class="form-control" style="border-radius: 15px;width: 400px;margin-left: -110px;"></textarea>
                                                               <!-- <input type="text" class="form-control" style="border-radius: 15px"/>-->
                                                                 <div id="edescription" style="color:red;height: 0.1px;font-size:12px;"></div> 
                                                            </div>
                                                          
                                                        </div>
                                                    </div>

                                                     <div class="form-group-inner">
                                                        <div class="row">
                                                           
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                 <label class="" style="margin-left: -106px;">End Date</label>
                                                                <input name="end_date" type="date" class="form-control" style="border-radius: 15px;width: 400px;margin-left: -110px;"/>
                                                                 <div id="edate" style="height: 0.1px;">
                                                                     
                                                                 </div> 
                                                            </div>
                                                        </div>




                                                           <div class="form-group-inner">
                                                             <div class="row">
                                                           
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <label class="login2" style="margin-left: -106px;">Registration Link:</label>
                                                                <input name="registration_link" type="text" class="form-control" style="border-radius: 15px;width:400px;margin-left: -110px;"/>
                                                                 <div id="econtact no" style="height: 0.1px;">
                                                                     
                                                                 </div> 
                                                            </div>
                                                        </div>






                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                 <label class="" style="margin-left: -106px;">Position:</label>
                                                                <input name="position" type="text" class="form-control" style="border-radius: 15px;width: 400px;margin-left: -110px;"/>
                                                                 <div id="edate" style="height: 0.1px;"></div> 
                                                            </div>


                                                    

                                                 
                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                        
                                                           
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                         <div class="form-group-inner">
                                                           <div class="row" style="padding-bottom: 25px;">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="padding-block-start: 13px;padding-left: 515px;" >
                                                                <button type="submit" class="btn btn-primary" style="margin-left:400px;margin-left: -801px; " onclick="return validate()">Submit</button>
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
                                                </center>
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